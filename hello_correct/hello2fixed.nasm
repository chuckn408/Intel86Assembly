%define SYSCALL_WRITE 1
%define STDOUT 1
%define SYSCALL_EXIT 60

global _start:
_start:
  mov rax, SYSCALL_EXIT
  mov rdi, 0

print_hello:
  push rbp
  mov rbp, rsp

  sub rsp, 16
  mov BYTE [rsp + 0], 'h'
  mov BYTE [rsp + 1], 'e'
  mov BYTE [rsp + 2], 'l'
  mov BYTE [rsp + 3], 'l'
  mov BYTE [rsp + 4], 'o'

  mov rax, SYSCALL_WRITE
  mov rdi, STDOUT
  lea rsi, [rsp]
  mov rdx, 5
  syscall

  add rsp, 16

  pop rbp

print_world:
  push rbp
  mov rbp, rsp

  sub rsp, 16
  mov BYTE [rsp + 0], ' '
  mov BYTE [rsp + 1], 'w'
  mov BYTE [rsp + 2], 'o'
  mov BYTE [rsp + 3], 'r'
  mov BYTE [rsp + 4], 'l'
  mov BYTE [rsp + 5], 'd'

  mov rax, SYSCALL_WRITE
  mov rdi, STDOUT
  lea rsi, [rsp]
  mov rdx, 6
  syscall

  add rsp, 16

  pop rbp
  ret  
