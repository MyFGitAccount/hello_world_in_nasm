section .data
    message db "Hello, World!", 10 ; The string to print, followed by a newline (ASCII 10)

section .text
    global _start ; Entry point for the linker

_start:
    ; System call for write (sys_write = 1)
    ;%rax: 0x01
    mov rax, 1

    ; File descriptor for stdout (1)
    ;arg0 (%rdi) fd: unsigned int
    mov rdi, 1

    ; Address of the string to print
    lea rsi, [message]

    ; Length of the string (including the newline)
    ; arg2 (%rdx) count: size_t
    mov rdx, 13 ; Length of "Hello, World!" + newline

    ; Invoke the system call
    syscall

    ; System call for exit (sys_exit = 60)
    ; %rax: 0x3c
    mov rax, 60

    ; Exit code (0 for success)
    ; arg0 (%rdi) error_code: int
    xor rdi, rdi

    ; Invoke the system call
    syscall
