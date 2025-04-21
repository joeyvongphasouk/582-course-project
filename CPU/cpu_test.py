# this is a script to execute inputs onto bkase or infant gpu grep methods

import sys
import subprocess

def main():
    if len(sys.argv) < 2:
        print("incorrect usage, arg 1 should be either 'ere' or 'pcre'")
        print("\t cpu_test.py <ere|pcre> <input_search_file> <input_regex_file>")
        sys.exit(-1)

    # execute correct func depending on opt
    if sys.argv[1] == "ere":
        ere_grep()
    elif sys.argv[1] == "ere_s":
        ere_grep_single_match()
    elif sys.argv[1] == "pcre":
        pcre_grep()
    elif sys.argv[1] == "pcre_s":
        pcre_grep_single_match()
    else:
        print("incorrect usage, arg 1 should be either 'ere' or 'pcre'")


# this function reads in a list of regexes performs egrep using each regex
def ere_grep():
    with open(sys.argv[3], 'r') as rf, open('results/results.txt', 'w') as results:
        for line in rf:
            regex = line.strip()
            try:
                output = subprocess.check_output(['egrep', regex, sys.argv[2]], text=True)
                results.write(output)
            except subprocess.CalledProcessError as e:
                if e.returncode == 1:
                    results.write("no matches found\n") # note, this is similar to bkase's grep output
                else:
                    results.write(f"error: {e} \n")
            results.write("\n")

# this function takes in a string to perform egrep onto an input file
def ere_grep_single_match():
    with open('results/results_single.txt', 'w') as results:
        regex = sys.argv[3].strip()
        try:
            output = subprocess.check_output(['egrep', regex, sys.argv[2]], text=True)
            results.write(output)
        except subprocess.CalledProcessError as e:
            if e.returncode == 1:
                results.write("no matches found\n")
            else:
                results.write(f"error: {e} \n")

def pcre_grep():
    pass

def pcre_grep_single_match():
    pass

if __name__ == "__main__":
    main()