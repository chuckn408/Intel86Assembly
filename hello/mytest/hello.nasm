%define SYSCALL_WRITE 1
%define STDOUT 1

print_hello:
  push rbp ; Save rbp on the stack to be able to restore it at the end of the function.
  mov rbp, rsp ; Set rbp to rsp

  sub rsp, 16 ; Reserve 5 bytes of space on the stack.
  mov BYTE [rsp + 0], 'M' ; Set each byte on the stack to a string character.
  mov BYTE [rsp + 1], 'y'
  mov BYTE [rsp + 2], ' '
  mov BYTE [rsp + 3], 'N'
  mov BYTE [rsp + 4], 'a'
  mov BYTE [rsp + 5], 'm'
  mov BYTE [rsp + 6], 'e'
  mov BYTE [rsp + 7], ' '
  mov BYTE [rsp + 8], 'I'
  mov BYTE [rsp + 9], 's'
  mov BYTE [rsp + 10], ' '
  mov BYTE [rsp + 11], 'C'
  mov BYTE [rsp + 12], 'h'
  mov BYTE [rsp + 13], 'u'
  mov BYTE [rsp + 14], 'c'
  mov BYTE [rsp + 15], 'k'
  
; Make the write syscall
  mov rax, SYSCALL_WRITE
  mov rdi, STDOUT ; Write to stdout.
  lea rsi, [rsp] ; Address on the stack of the string.
  mov rdx, 16 ; Pass the length of the string which is 5.
  syscall

  add rsp, 16 ; Restore the stack to its original value.

  pop rbp ; Restore rbp
  ret
