; Comments starts with a semicolon
BITS 64 ;
CPU X64 ;

%define SYSCALL_EXIT 60

section .text
global _start
_start:
 mov rax, SYSCALL_EXIT
 mov rdi, 8
 syscall
