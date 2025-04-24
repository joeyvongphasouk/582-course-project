# THIS SCRIPT IS DEPRECATED
# just run the commands directly




# this is a script to execute inputs onto bkase or infant gpu grep methods

import sys
import subprocess

def main():
    if len(sys.argv) < 2:
        print("incorrect usage, arg 1 should be either 'bkase' or 'infant'")
        print("\t gpu_test.py bkase ...")
        print("\t gpu_test.py bkase_nsys ...")
        print("\t gpu_test.py infant <todo>")
        sys.exit(-1)

    if sys.argv[1] == "bkase":
        gpu_grep_kase(False)
    elif sys.argv[1] == "bkase_nsys":
        gpu_grep_kase(True)
    elif sys.argv[1] == "infant":
        gpu_grep_infant(False)
    elif sys.argv[1] == "infant_nsys":
        gpu_grep_infant(True)
    else:
        print("incorrect usage, arg 1 is not 'bkase' or 'infant'")


def gpu_grep_kase(report):
    # make the file
    try:
        subprocess.run(["make"], cwd = "bkase-gpu-grep", check=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    except subprocess.CalledProcessError as error:
        print("error make failed;", error)
        sys.exit(-1)
    
    # execute the file using the provided inputs
    gpu_args = ["./bkase-gpu-grep/nfa"]
    if report:
        gpu_args = ["nsys", "profile", "./bkase-gpu-grep/nfa"]
    
    for i in range(len(sys.argv)):
        if i > 1:
            gpu_args.append(sys.argv[i])

    try:
        subprocess.run(gpu_args)
    except subprocess.CalledProcessError as error:
        print("error nfa call failed", error)
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