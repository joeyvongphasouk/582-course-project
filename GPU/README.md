Current working version utilizes a NVIDIA Geforce RTX 3070 Ti GPU. The environment is made using the windows subsystem for linux (wsl) which has the OS: Ubuntu 24.04.1 LTS. The CUDA toolkit used can be found here: https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&Distribution=WSL-Ubuntu&target_version=2.0&target_type=runfile_local

---

Two versions of pattern matching onto the GPU are used here.

# bkase gpu grep
The first version is from [Brandon Kase](https://github.com/bkase), adapted by [Dmitry Mikushin](https://github.com/dmikushin): https://github.com/dmikushin/gpu-grep. This version does not support PCRE, ie. it cannot perform lookaround or lazy modification onto patterns and utilizes extended regular expressions.

<!-- To run, utlize the gpu_test script; (gpu-grep method, the input file to search, and the pattern input file)

    python3 gpu_test.py bkase ../Inputs/TestFiles/romeo_search.txt ../Inputs/Regexs/romeo_regex.txt

To collect benchmarking information;

    python3 gpu_test.py bkase_nsys ../Inputs/TestFiles/romeo_search.txt ../Inputs/Regexs/romeo_regex.txt

To just print out grep info, ref following example:

    python3 gpu_test.py bkase -f ../Inputs/TestFiles/romeo_search.txt R* -->

# nsys ncu utils
Nsight Systems version: NVIDIA Nsight Systems version 2024.6.2.225-246235244400v0
Nsight Compute CLI version: Version 2025.1.1.0 (build 35528883) (public-release)

To get the nsys report of the GPU project, refer to the following command:
    nsys profile -o ./GPU/results/nsys_reports/romeo-100MB ./GPU/bkase-gpu-grep/nfa -f Inputs/TestFiles/romeo-100MB.txt -r Inputs/Regexs/romeo.regex -t

To get the ncu report of a

### future ref for myself
you have to export to path
    export PATH=/usr/local/cuda-12.8/bin:$PATH

ncu workaround (running wsl2 ubuntu on windows 11 system): https://peterchng.com/blog/2024/03/02/profiling-cuda-programs-on-wsl-2/
1. Go to nvidia control panel
2. in menu, desktop -> enable developer settings
3. developer -> manage counters, enabel for all users
ncu checkpoint: https://developer.nvidia.com/nvidia-development-tools-solutions-err-nvgpuctrperm-nsightcompute