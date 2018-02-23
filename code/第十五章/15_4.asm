assume cs:code

stack segment
      db 128 dup(0)
stack ends

data segment
     dw 0,0
data ends

code segment

start: mov ax,stack
       mov ss,ax
       mov sp,128

       mov ax,data
       mov es,ax

       push es:[9*4]
       pop ds:[0]
       push es:[9*4+2]
       pop ds:[2] ;将原来的int 9 中断例程入口地址保存在ds:[0],ds:[2]中

       mov word ptr es:[9*4],offset int9
       mov es:[9*4+2],cs ;将中断向量表设置新的int 9 中断例程的入口地址

       mov ax,0b800h
       mov es,ax
       mov ah,'a'

    s: mov es:[160*12+40*2],ah
       call delay
       inc ah
       cmp ah,'z'
       jna s

       push ds:[0]
       pop es:[9*4]
       push ds:[2]
       pop es:[9*4+2]
       ;将中断向量表中int 9中断例程的入口恢复为原来的地址

       mov ax,4c00h
       int 21h


delay: push ax
       push dx


       mov dx,10h
       mov ax,0

    s1:sub ax,1
       sbb dx,0
       cmp ax,0
       jne s1
       cmp dx,0
       jne s1

       pop dx
       pop ax
       ret

;----以下为新的int 9 中断例程------------
int9: push ax
      push bx
      push es

      in al,60h

      pushf
      pushf
      pop bx
      and bh,11111100b
      push bx
      popf
      call dword ptr ds:[0]

      cmp al,02h
      jne int9ret

      mov ax,0b800h
      mov es,ax
      mov byte ptr es:[160*12+40*2+1],01000000b

int9ret:
      pop es
      pop bx
      pop ax
      iret

code ends

end start