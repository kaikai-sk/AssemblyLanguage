assume cs:code,ds:data,ss:stack

data segment 
     dw 0011h,0122h,0233h,0344h,0455h,0566h,0677h,0788h
data ends

stack segment
      dw 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 
stack ends

code segment

start: mov ax,stack
       mov ss,ax
       mov sp,20h

       mov ax,data
       mov ds,ax ;代码中数据段的段地址

       mov ax,20h
       mov es,ax ;目标内存的段地址

       mov bx,0
       mov dx,0
       mov cx,8
s:     mov ax,ds:[bx]
       mov es:[bx],ax
       add dx,ax
       add bx,2
       loop s

       mov bx,0
       mov cx,8
s1:    mov ax,ds:[bx]
       push ax
       add bx,2
       loop s1

       mov bx,0
       mov cx,8
s2:    pop ax
       mov ds:[bx],ax
       add bx,2
       loop s2

       mov ax,4c00h
       int 21h
code ends

end start