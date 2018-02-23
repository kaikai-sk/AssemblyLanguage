assume cs:code

code segment

start: mov ax,cs;
       mov ds,ax
       mov si,offset do0 ;ds:si指向do程序，源地址
       mov ax,0
       mov es,ax
       mov di,200h ;es:di指向目标地址

       mov cx,offset do0end - offset do0 ;cx为传输长度
       cld ;传输方向为正向
       rep movsb

       mov ax,0
       mov es,ax
       mov word ptr es:[0*4],200h
       mov word ptr es:[0*4+2],0 ;设置中断向量表

       mov ax,4c00h
       int 21h

  do0: jmp short do0start
       db 'divide overflow!'

do0start:
       mov ax,cs
       mov ds,ax
       mov si,202h ;ds:si指向字符串

       mov ax,0b800h;
       mov es,ax
       mov di,12*160+36*2 ;es:di指向显存的中间位置

       mov cx,17
    s: mov al,[si]
       mov es:[di],al
       MOV byte ptr es:[di+1],02 ;
       inc si
       add di,2
       loop s

       mov ax,4c00h
       int 21h
do0end:
       nop

code ends

end start