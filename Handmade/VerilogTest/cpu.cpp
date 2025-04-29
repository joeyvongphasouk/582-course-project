#include <errno.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/stat.h>

#include <cstring>
#include <iostream>

int main(int argc, char* argv[]) {
	if (argc < 2) {
			std::cout << "Needs 1 argument: inputFilename\n";
			return 1;
	}

	std::string inputFilename = argv[1];
	
	int pcieFd = open("void", O_RDWR | O_SYNC);
	if (pcieFd == -1) {
			std::cerr << "open() " << strerror(errno) << '\n';
			return 1;
	}
	
	const int pcieSize = 268435456;
	void* pcie = mmap(NULL, pcieSize, PROT_READ | PROT_WRITE, MAP_SHARED, pcieFd, 0);
	if (pcie == (void*)-1) {
			std::cerr << "mmap() " << strerror(errno) << '\n';
			return 1;
	}
	close(pcieFd);

	int inFd = open(inputFilename.c_str(), O_RDWR);
	if (inFd == -1) {
			std::cerr << "open() " << strerror(errno) << '\n';
			return 1;
	}
	
	struct stat statBuffer;
	if (fstat(inFd, &statBuffer) == -1) {
			std::cerr << "fstat() " << strerror(errno) << '\n';
			return 1;
	}
	int inputSize = statBuffer.st_size;

	void* input = mmap(NULL, inputSize, PROT_READ, MAP_SHARED, inFd, 0);
	if (input == (void*)-1) {
			std::cerr << "mmap() " << strerror(errno) << '\n';
			return 1;
	}
	close(inFd);
	
	int bytesProcessed = 0;
	while (bytesProcessed + pcieSize < inputSize) {
			memcpy(pcie, (char*)input + bytesProcessed, pcieSize);

			bytesProcessed += pcieSize;
	}
	
	memcpy(pcie, (char*)input + bytesProcessed, inputSize - bytesProcessed);
	std::cout << *((char*)pcie);

	munmap(pcie, pcieSize);
	munmap(input, inputSize);

	return 0;
}