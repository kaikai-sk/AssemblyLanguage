assume cs:code

code segment

start: mov ax,3456
       int 7ch ;����7ch�ж����̣�����ax�����ݵ�ƽ��

       add ax,ax
       adc dx,dx ;��Ž�������������2

       mov ax,4c00h
       int 21h

code ends

end start