assume cs:code

code segment

start: mov ax,cs;
       mov ds,ax
       mov si,offset do0 ;ds:siָ��do����Դ��ַ
       mov ax,0
       mov es,ax
       mov di,200h ;es:diָ��Ŀ���ַ

       mov cx,offset do0end - offset do0 ;cxΪ���䳤��
       cld ;���䷽��Ϊ����
       rep movsb

       mov ax,0
       mov es,ax
       mov word ptr es:[0*4],200h
       mov word ptr es:[0*4+2],0 ;�����ж�������

       mov ax,4c00h
       int 21h

  do0: jmp short do0start
       db 'divide overflow!'

do0start:
       mov ax,cs
       mov ds,ax
       mov si,202h ;ds:siָ���ַ���

       mov ax,0b800h;
       mov es,ax
       mov di,12*160+36*2 ;es:diָ���Դ���м�λ��

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