assume cs:code,ds:data,ss:stack

data segment
     db 'welcome to masm!'
     db 02h,24h,71h ;������ɫ����
data ends

stack segment
     db 8 dup(0)
stack ends

code segment

start: mov ax,data
       mov ds,ax
       mov ax,stack
       mov ss,ax
       mov sp,10h

       mov bx,0 ;bx���㣬����������ɫ
       mov ax,0b872h ;�����Ļ��12���м�Ķ���ʼ��ַ��������ax��

       mov cx,3 ;�����ַ�����ѭ������
s3:    push cx  ;������ջ������Ϊ���ѭ������Ĵ�����ֵ
       push ax
       push bx

       mov es,ax  ;es�����12���м�Ķ���ʼ��ַ

       mov si,0 ; si�������������е��ַ�
       mov di,0 ; di������λĿ����

       mov cx,10h
       ;ѭ��16�Σ�ʮ�����ַ�
  s1:  mov al,ds:[si]
       mov es:[di],al
       inc si
       add di,2
       loop s1 ;��ѭ��ʵ��ż��ַ�д���ַ�

       mov di,1
       pop bx
       mov al,ds:10h[bx] ; ȡ��ɫ����
       inc bx ;

       mov cx,10h ;Ҳѭ��16��
  s2:  mov es:[di],al
       add di,2
       loop s2 ;��ѭ��ʵ�����ַ�д����ɫ����

       ;Ϊ��һ����ѭ����׼��
       pop ax
       add ax,0ah ;������ʼ��ַ��Ϊ��һ��
       pop cx
       loop s3 

       mov ax,4c00h
       int 21h
code ends

end start