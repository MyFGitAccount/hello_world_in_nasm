# hello_world_in_nasm
hello world in nasm

# Where to download nasm
if you are in linux you can use your apt to download nasm
Eg: sudo apt install  nasm
You can also build nasm from source (in linux):
1. Go to https://www.nasm.us/
2. Find the downloads web page choose one version that fit your current set up (macOS,win32,win64,linux etc....) tar.gz or zip
3. ./configue prefix=/path/to/your/nasm
4. make
5. make install
6. nano ~/.bashrc 
7. in bashrc type export PATH=$PATH:"/path/to/your/nasm/bin"
8. source ~/.bashrc

For window
1. download it from the webpage
2. goto environment variables and export the nasm bin

# How to program in nasm
1. Look at the linux syscall table https://chromium.googlesource.com/chromiumos/docs/+/master/constants/syscalls.md
2. Look at window api syscall table

# Reference
https://cs.lmu.edu/~ray/notes/nasmtutorial/
