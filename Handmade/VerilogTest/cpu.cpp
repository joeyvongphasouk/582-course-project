#include <errno.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/stat.h>

#include <cstring>
#include <iostream>

int main(int argc, char* argv[]) {
	if (argc < 4) {
		std::cout << "Needs 3 arguments: operation, inputFilename, outputFilename\n";
		return 1;
	}
	
	bool read = argv[1][0] == 'r';
	std::string inputFilename = argv[2];
	std::string outputFilename = argv[3];
	
	int pcieFd = open("/sys/bus/pci/devices/0000:02:00.1/resource4", O_RDWR | O_SYNC);
	if (pcieFd == -1) {
		std::cerr << "open() " << strerror(errno) << '\n';
		return 1;
	}
	
	struct stat statBuffer;
	if (fstat(pcieFd, &statBuffer) == -1) {
		std::cerr << "fstat() " << strerror(errno) << '\n';
		return 1;
	}
	long pcieSize = statBuffer.st_size;
	
	void* pcie = mmap(NULL, pcieSize, PROT_READ | PROT_WRITE, MAP_SHARED | MAP_SYNC, pcieFd, 0);
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
	
	if (fstat(inFd, &statBuffer) == -1) {
		std::cerr << "fstat() " << strerror(errno) << '\n';
		return 1;
	}
	long inputSize = statBuffer.st_size;
	
	void* input = mmap(NULL, inputSize, PROT_READ, MAP_SHARED, inFd, 0);
	if (input == (void*)-1) {
		std::cerr << "mmap() " << strerror(errno) << '\n';
		return 1;
	}
	close(inFd);
	
	int outFd = open(outputFilename.c_str(), O_RDWR | O_CREAT | O_TRUNC, 0666);
	if (outFd == -1) {
		std::cerr << "open() " << strerror(errno) << '\n';
		return 1;
	}
	
	if (ftruncate(outFd, inputSize) == -1) {
		std::cerr << "ftruncate() " << strerror(errno) << '\n';
		return 1;
	}
	
	void* output = mmap(NULL, inputSize, PROT_WRITE, MAP_SHARED, outFd, 0);
	if (output == (void*)-1) {
		std::cerr << "mmap() " << strerror(errno) << '\n';
		return 1;
	}
	close(outFd);
	
	if (read) {
		memcpy(output, pcie, inputSize);
	} else {
		memcpy(pcie, input, inputSize);
	}
	
	munmap(pcie, pcieSize);
	munmap(input, inputSize);
	munmap(output, inputSize);
	
	return 0;
}