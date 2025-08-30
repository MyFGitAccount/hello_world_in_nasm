section .data
    message db "Hello, World!", 10 ; The string to print, followed by a newline (ASCII 10)

section .text
    global _start ; Entry point for the linker

_start:
    ; System call for write (sys_write = 1)
    mov rax, 1

    ; File descriptor for stdout (1)
    mov rdi, 1

    ; Address of the string to print
    lea rsi, [message]

    ; Length of the string (including the newline)
    mov rdx, 13 ; Length of "Hello, World!" + newline

    ; Invoke the system call
    syscall

    ; System call for exit (sys_exit = 60)
    mov rax, 60

    ; Exit code (0 for success)
    xor rdi, rdi

    ; Invoke the system call
    syscall
