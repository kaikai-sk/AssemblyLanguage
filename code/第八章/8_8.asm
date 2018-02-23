assume cs:code,ds:data,ss:stack

data segment
     dd 100001
     dw 100
     dw 0
data ends

stack segment
      dw 8 dup(0)
stack ends

code segment
 
start: mov ax,data
       mov ds,ax

       mov ax,ds:[0]
       mov dx,ds:[2]
       div word ptr ds:[4]
       mov ds:[6],ax

       mov ax,4c00h
       int 21h

code ends

end start