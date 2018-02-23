assume cs:codesg

codesg segment
       dw 0011h,0122h,0233h,0344h,0455h,0566h,0677h,0788h
       dw 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

start: mov bx,0
       mov ax,20h
       mov ds,ax ; (ds)=20h
       
       mov cx,8  ;循环8次
s:     mov ax,cs:[bx]
       mov ds:[bx],ax ;将代码段中的数据复制到内存
       add bx,2   ;bx=bx+2
       loop s     ;;实现把代码段内的数据，复制到起始地址为0:200的内存中去

       mov ax,cs
       mov ss,ax
       mov sp,30h
       mov bx,0

       mov cx,8  ;循环8次
s1:    mov ax,ds:[bx]
       push ax   ;将8个数据入栈
       add bx,2
       loop s1

       mov bx,0

       mov cx,8
s2:    pop ax
       mov ds:[bx],ax
       add bx,2  ;将8个数据出栈
       loop s2   ;;用栈的机制实现将0:200 – 215中的数据顺序逆转

       mov dx,0
       mov cx,8
       mov bx,0
s3:    add dx,ds:[bx] ;将内存中的数据加到dx中
       add bx,2
       loop s3

       mov ax,4c00h
       int 21h
codesg ends

end