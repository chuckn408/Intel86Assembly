; Comments starts with a semicolon
BITS 64 ;
CPU X64 ;

section .text
global _start
_start:
 xor rax, rax ; Set rax to 0. not needed but better than an empty body.
