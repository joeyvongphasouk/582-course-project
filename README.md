# 582-course-project
This is the course project for Hanuman Chu and Joey Vongphasouk in the Mines CSCI 582 class. This project aims to benchmark pattern matching via NFAs on various accelerators. The devices used and its corresponding application are the following:
- CPU
    - 11th Gen Intel Core i5-1135G7 @2.40GHz
    - pikespeak cpu todo
- GPU
    - NVIDIA GeForce RTX 3070 Ti
    - NVIDIA RTX 3080 Ti (pikespeak)
- FPGA
    - Xilinx Alveo U50 (pikespeak)

## CPU Benchmarks
The 

## GPU Benchmarks

## FPGA Benchmarks


## Additional Checks and Scripts
The `cpu_gpu_out_check.py` script was used to check the outputs of both the GPU and CPU code. The script runs both implementations and outputs to a corresponding results folder. A diff is then ran on both produced files. The usage of the python script is as follows:

    python3 cpu_gpu_out_check.py <input_search_file> <input_regex_file>
    
    # example ran from the root dir
    python3 cpu_gpu_out_check.py Inputs/TestFiles/romeo-100KB.txt Inputs/Regexs/romeo_simple.regex

The `resize_input.py` script under the Inputs/TestFiles/ folder was used to resize given input text files into a desired size measured in bytes (K, M, G). The usage of the python script is as follows: 

    python3 resize_input.py <input_file> <file_size_number> <file_block>

    # example ran from inside the Inputs/TestFiles/ dir
    python3 resize_input.py romeo.txt 100 MB








---
other notes cause i dont have notepad right now

nsys profile --trace=cuda,nvtx,osrt --power-metrics=true -o power_profile ./GPU/bkase-gpu-grep/nfa -f Inputs/TestFiles/romeo-100MB.txt ".*ROMEO.*" -t
nsys profile -o ./GPU/results/nsys_reports/war-and-peace-1GB_single --trace=cuda,nvtx,osrt ./GPU/bkase-gpu-grep/nfa -f Inputs/TestFiles/war-and-peace-1GB.txt '.*Price Andrew.*' -t

nvidia-smi --query-gpu=index,gpu_bus_id,power.draw --format=csv -lms 10 > gpu_draw.csv