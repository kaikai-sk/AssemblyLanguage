assume cs:code

data segment 
     dw 1,2,3,4,5,6,7,8
     dd 0,0,0,0,0,0,0,0
data ends

code segment
    
start:
       mov ax,data
       mov ds,ax
       mov si,0  ;ds;siָ���һ��word��Ԫ
       mov di,16 ;ds;diָ��ڶ���word��Ԫ

       mov cx,8
    s: mov bx,[si]
       call cube
       mov [di],ax   ;����λ�����ڴ�
       mov [di].2,dx ;����λ�����ڴ�
       add si,2  ;ds��si��ָ����һ��word��Ԫ
       add di,4  ;ds��di��ָ����һ��dword��Ԫ
       loop s

       mov ax,4c00h
       int 21h

 cube: mov ax,bx
       mul bx
       mul bx
       ret

code ends

end start