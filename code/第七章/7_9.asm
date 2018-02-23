assume cs:code,ds:data,ss:stack

stack segment
      dw 0,0,0,0,0,0,0,0
stack ends

data segment
     db '1. display......'
     db '2. brows........'
     db '3. replace......'
     db '4. modyfy.......'
data ends

code segment

start: mov ax,stack
       mov ss,ax
       mov sp,16

       mov ax,data
       mov ds,ax

       mov bx,0 ;用来表示行
       mov cx,4
s0:    push cx
       mov si,0 ;定义列

       mov cx,4
  s:   mov al,[bx+3+si] ;定位到每个要索引的字母
       and al,11011111b ;变大写
       mov [bx+3+si],al
       inc si ;指向下一个字母
       loop s

       add bx,16
       pop cx
       loop s0

       mov ax,4c00h
       int 21h

code ends

end start