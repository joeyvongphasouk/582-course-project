# this is a script to execute inputs onto bkase or infant gpu grep methods

import sys
import subprocess
import time
# import psutil

def main():
    if len(sys.argv) < 2:
        print("incorrect usage, arg 1 should be either 'ere' or 'pcre'")
        print("\t cpu_test.py <ere|turbo> <input_search_file> <input_regex_file>")
        sys.exit(-1)

    # execute correct func depending on opt
    if sys.argv[1] == "ere":
        ere_grep()
    elif sys.argv[1] == "ere_s":
        ere_grep_single_match()
    elif sys.argv[1] == "turbo":
        turbo_ere_grep()
    elif sys.argv[1] == "memory":
        mem_ere_grep()
    elif sys.argv[1] == "time":
        time_ere_grep()
    else:
        print("incorrect usage, arg 1 should be either 'ere' or 'pcre'")


# this function reads in a list of regexes performs egrep using each regex
def ere_grep():
    with open('results/results.txt', 'w') as results:
        try:
            output = subprocess.check_output(['egrep', '-f', sys.argv[3], sys.argv[2]], text=True)
            results.write(output)
        except subprocess.CalledProcessError as e:
            if e.returncode == 1:
                results.write("no matches found\n") # note, this is similar to bkase's grep output
            else:
                results.write(f"error: {e} \n")

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

def turbo_ere_grep():

    pass

def mem_ere_grep():
    command = ["python3"] + sys.argv
    print(command)
    # psutil.Popen(["python3"])

    high = 0
    with open(sys.argv[3], 'r') as rf, open('results/results.txt', 'w') as results:
        for line in rf:
            regex = line.strip()

            current = psutil.Popen(['egrep', regex, sys.argv[2]])
            while current.is_running():
                try:
                    h = current.memory_info().rss
                    high = max(high, h)
                except:
                    break
            results.write("\n")

    print(f"Highest memory: {high}")
    print(f"Highest memory util: {high / psutil.virtual_memory().total}")

def time_ere_grep():
    start_time = time.time()
    try:
        output = subprocess.check_output(['egrep', '-f', sys.argv[3], sys.argv[2]], text=True)
        # print(output)
    except subprocess.CalledProcessError as e:
        if e.returncode == 1:
            print("no matches found\n") # note, this is similar to bkase's grep output
        else:
            print(f"error: {e} \n")
    end_time = time.time()

    
    # results.write(f"Start time: {start_time}\n")
    # results.write(f"End time: {end_time}\n")
    print(f"Elapsed time: {end_time - start_time}\n")

if __name__ == "__main__":
    main()