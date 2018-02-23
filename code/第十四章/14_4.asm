assume cs:code

code segment

start: mov al,8
       out 70h,al
       in al,71h ;将CMOS 8号单元的内容读到了 al

       mov ah,al
       mov cl,4
       shr ah,cl ;得到高四位
       and al,00001111b ;得到低四位

       add ah,30h
       add al,30h;转为十进制的ASCII码

       mov bx,0b800h
       mov es,bx
       mov byte ptr es:[160*12+40*2],ah ;显示月份的十位数码
       mov byte ptr es:[160*12+40*2+2],al ;接着显示月份的个位数码

       mov ax,4c00h
       int 21h
code ends

end start