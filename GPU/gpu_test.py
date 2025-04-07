# this is a script to execute inputs onto bkase or infant gpu grep methods

import sys
import subprocess

def main():
    if len(sys.argv) < 2:
        print("incorrect usage, arg 1 should be either 'bkase' or 'infant'")
        print("\t gpu_test.py bkase <input_search_file> <input_regex_file>")
        print("\t gpu_test.py infant <todo>")
        sys.exit(-1)

    if sys.argv[1] == "bkase":
        gpu_grep_kase()
    elif sys.argv[1] == "infant":
        gpu_grep_infant()
    else:
        print("incorrect usage, arg 1 should be either 'bkase' or 'infant'")


def gpu_grep_kase():
    # make the file
    try:
        subprocess.run(["make"], cwd = "bkase-gpu-grep", check=True)
    except subprocess.CalledProcessError as error:
        print("error make failed;", error)
        sys.exit(-1)
    
    # execute the file using the provided inputs
    # arg 1 is the input file to search
    # arg 2 is the input file for regexs, where each line is a new pattern to check
    if len(sys.argv) != 4:
        print("incorrect usage, gpu_test.py bkase <input_search_file> <input_regex_file>")
        sys.exit(-1)
    try:
        subprocess.run(["nsys", "profile", "./bkase-gpu-grep/nfa", "-t", "-f", sys.argv[2], "-r", sys.argv[3]])
    except subprocess.CalledProcessError as error:
        print("error nsys nfa call failed", error)
        sys.exit(-1)


    # this don't work cause of admin priveleges right now

    # try:
    #     subprocess.run(["ncu", "-o", "profile", "./bkase-gpu-grep/nfa", "-t", "-f", sys.argv[2], "-r", sys.argv[3]])
    # except subprocess.CalledProcessError as error:
    #     print("error nsys nfa call failed", error)
    #     sys.exit(-1)

def gpu_grep_infant():
    pass

if __name__ == "__main__":
    main()