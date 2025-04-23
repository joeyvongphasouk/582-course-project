# checks the output of both the cpu and gpu grep methods
# utilizes the test inputs found in Inputs/

import sys
import pathlib
import subprocess

def check_results(input_file, regex_file):

    # perform the test on the cpu first
    # note that this is the same thing as in cpu_test.py, but I structured the dir weirdly
    file_write = pathlib.Path(input_file).stem
    file_cpu = 'CPU/results/' + file_write + '.txt'
    with open(file_cpu, 'w') as results:
        # results.write(f"----------- regex: {regex} \n")
        try:
            output = subprocess.check_output(['egrep', '-f', regex_file, input_file], text=True)
            results.write(output)
        except subprocess.CalledProcessError as e:
            if e.returncode != 1:
                results.write(f"error: {e} \n")
        results.write("\n")

    # next perform the same test on the gpu
    # again, similar to gpu_test.py
    file_gpu = 'GPU/results/' + file_write + '.txt'
    with open(file_gpu, 'w') as results:
        try:
            subprocess.run(["make"], cwd = "GPU/bkase-gpu-grep", check=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        except subprocess.CalledProcessError as error:
            print("error make failed;", error)
            sys.exit(-1)

        # there is an option in bkase nfa to test using a given file
        # but it doesn't work for some reason???
        # 
        gpu_args = ["./GPU/bkase-gpu-grep/nfa", "-f", input_file, "-r", regex_file]
        try:
            output = subprocess.check_output(gpu_args, text=True)
            results.write(output)
        except subprocess.CalledProcessError as e:
            if e.returncode != 1:
                results.write(f"error: {e} \n")
        results.write("\n")


    # run a diff command in order to see if the files are the same
    diff = subprocess.run(['diff', file_cpu, file_gpu], capture_output=True, text=True)
    if diff.returncode == 0:
        print("output match")
    else:
        print("output does not match")
        print(diff.stdout)

def main():
    if len(sys.argv) < 2:
        print("incorrect usage")
        print("cpu_gpu_out_check.py <input_search> <input_regex>")
        sys.exit(-1)

    check_results(sys.argv[1], sys.argv[2])

if __name__ == "__main__":
    main()