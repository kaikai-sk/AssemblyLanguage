; ��װ7ch���ж�
; ���ܣ���һword�����ݵ�ƽ��
; ��������ax��=Ҫ���������
; ����ֵ��dx��ax�д�Ž���ĸ�16λ�͵�16λ

assume cs:code

code segment

start: mov ax,cs
       mov ds,ax
       mov si,offset squ ;ds:siָ��Դ��ַ

       mov ax,0
       mov es,ax
       mov di,200h ;����es��diָ��Ŀ���ַ

       mov cx,offset squend - offset squ ;����cxΪ���䳤��
       cld ;���ô��䷽��Ϊ֤
       rep movsb

       mov ax,0
       mov es,ax
       mov word ptr es:[7ch*4],200h
       mov word ptr es:[7ch*4+2],0  ;�����ж�������

       mov ax,4c00h
       int 21h

 squ:  mul ax
       iret

squend:
       nop

code ends

end start