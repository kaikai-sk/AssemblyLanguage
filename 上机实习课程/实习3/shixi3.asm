assume cs:code

code segment

start: mov ax,cs
       mov ds,ax
       mov si,offset zhongduan ;ds:siָ��Դ��ַ
       mov ax,0
       mov es,ax
       mov di,200h ;es:diָ��Ŀ���ַ

       mov cx,offset zhongduanend - offset zhongduan
       cld
       rep movsb ;�ж����̵Ŀ���

       mov ax,0
       mov es,ax
       mov word ptr es:[7ch*4],200h
       mov word ptr es:[7ch*4+2],0 ;�����ж�������

       mov ax,4c00h
       int 21h

zhongduan:
       jmp short main
       db 'welcome to masm!'
 main: push ax
       push cx
       push dx
       push ds
       push si

       cmp ah,2
       je output
       cmp ah,1
       je capital

  output:  ;�ڶ����ӳ���
       mov ax,cs
       mov ds,ax
       mov si,202h ;ds:siָ��Դ��ַ
       mov ax,0b800h
       mov es,ax
       mov di,160*12+32

       mov cx,16
    s: mov al,ds:[si]
       mov es:[di],al
       mov byte ptr es:[di+1],10101110b
       inc si
       add di,2
       loop s
       jmp short endl

capital: ;��һ���ӳ���
       mov ax,0b800h
       mov es,ax
       
       mov bx,0
       mov cl,dh
       mov ch,0
     t:add bx,160
       loop t

       mov cx,2
     u:adc bl,dl
       loop u

       mov di,bx

   cc: cmp al,'$'
       je endl
       mov al,ds:[si]
       cmp al,'A'
       jb printf
       cmp al,'Z'
       ja printf
       mov es:[di],al ;
       mov byte ptr es:[di+1],10101110b ;
       add di,2
printf:
       inc si
       jmp short cc

 endl: pop si
       pop ds
       pop dx
       pop cx
       pop ax
       iret

zhongduanend:
       nop
code ends

end start