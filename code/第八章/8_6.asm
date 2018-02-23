assume cs:code,ds:data,ss:stack

data segment
     db 'DEC'
     db 'Ken Oslen'
     dw 137
     dw 40
     db 'PDP'
data ends

stack segment
      dw 0,0,0,0,0,0,0,0
stack ends

code segment

start: mov ax,data
       mov ds,ax

       mov ax,stack
       mov ss,ax
       mov sp,16

       mov word ptr ds:[0ch],38 ;
       add word ptr ds:[0eh],70 ;

       mov si,0
       mov byte ptr ds:[10h+si],'V'
       inc si
       mov byte ptr ds:[10h+si],'A'
       inc si
       mov byte ptr ds:[10h+si],'X'

       mov ax,4c00h
       int 21h

code ends

end start