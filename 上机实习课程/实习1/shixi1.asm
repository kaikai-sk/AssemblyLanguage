assume cs:codesg

codesg segment
       dw 0011h,0122h,0233h,0344h,0455h,0566h,0677h,0788h
       dw 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

start: mov bx,0
       mov ax,20h
       mov ds,ax ; (ds)=20h
       
       mov cx,8  ;ѭ��8��
s:     mov ax,cs:[bx]
       mov ds:[bx],ax ;��������е����ݸ��Ƶ��ڴ�
       add bx,2   ;bx=bx+2
       loop s     ;;ʵ�ְѴ�����ڵ����ݣ����Ƶ���ʼ��ַΪ0:200���ڴ���ȥ

       mov ax,cs
       mov ss,ax
       mov sp,30h
       mov bx,0

       mov cx,8  ;ѭ��8��
s1:    mov ax,ds:[bx]
       push ax   ;��8��������ջ
       add bx,2
       loop s1

       mov bx,0

       mov cx,8
s2:    pop ax
       mov ds:[bx],ax
       add bx,2  ;��8�����ݳ�ջ
       loop s2   ;;��ջ�Ļ���ʵ�ֽ�0:200 �C 215�е�����˳����ת

       mov dx,0
       mov cx,8
       mov bx,0
s3:    add dx,ds:[bx] ;���ڴ��е����ݼӵ�dx��
       add bx,2
       loop s3

       mov ax,4c00h
       int 21h
codesg ends

end