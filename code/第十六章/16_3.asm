assume cs:code

code segment

start: mov al,3bh
       call showbyte

       mov ax,4c00h
       int 21h

showbyte:
       jmp short show
       
       table db '0123456789ABCDEF' ;字符表
show:  push bx
       push es

       mov ah,al
       shr ah,1
       shr ah,1
       shr ah,1
       shr ah,1
       and al,00001111b ;右移四位，ah中得到高四位的值
                        ;al中得到低四位的值
       mov bl,ah
       mov bh,0
       mov ah,table[bx] ;用高四位的值作为相对于table的
                        ;偏移取得对应的字符

       mov bx,0b800h
       mov es,bx
       mov es:[160*12+40*2],ah

       mov bl,al
       mov bh,0
       mov al,table[bx] ;用高四位的值作为相对于table的
                        ;偏移取得对应的字符
       mov es:[160*12+40*2+2],al

       pop es
       pop bx

       ret
code ends

end start