Current working version utilizes a NVIDIA Geforce RTX 3070 Ti GPU. The environment is made using the windows subsystem for linux (wsl) which has the OS: Ubuntu 24.04.1 LTS. The CUDA toolkit used can be found here: https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&Distribution=WSL-Ubuntu&target_version=2.0&target_type=runfile_local

---

Two versions of pattern matching onto the GPU are used here.

# bkase gpu grep
The first version is from [Brandon Kase](https://github.com/bkase), adapted by [Dmitry Mikushin](https://github.com/dmikushin): https://github.com/dmikushin/gpu-grep. This version does not support PCRE, ie. it cannot perform lookaround or lazy modification onto patterns and utilizes extended regular expressions.

To run, utlize the gpu_test script; (gpu-grep method, the input file to search, and the pattern input file)

    python3 gpu_test.py bkase ../Inputs/TestFiles/romeo_search.txt ../Inputs/Regexs/romeo_regex.txt

To collect benchmarking information;

    python3 gpu_test.py bkase_nsys ../Inputs/TestFiles/romeo_search.txt ../Inputs/Regexs/romeo_regex.txt

To just print out grep info, ref following example:

    python3 gpu_test.py bkase -f ../Inputs/TestFiles/romeo_search.txt R*

# iNFAnt gpu grep
The second version is from [Vinh Dang](https://github.com/vqd8a): https://github.com/vqd8a/iNFAnt2. This version supports PCRE patterns.

To run, utilize the gpu_test script;

    python3 gpu_test.py infant todo


### future ref for myself
you have to export to path
    export PATH=/usr/local/cuda-12.8/bin:$PATH

ncu checkpoint: https://developer.nvidia.com/nvidia-development-tools-solutions-err-nvgpuctrperm-nsightcompute