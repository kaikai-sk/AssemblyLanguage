; 安装7ch号中断
; 功能：求一word型数据的平方
; 参数：（ax）=要计算的数据
; 返回值：dx、ax中存放结果的高16位和低16位

assume cs:code

code segment

start: mov ax,cs
       mov ds,ax
       mov si,offset squ ;ds:si指向源地址

       mov ax,0
       mov es,ax
       mov di,200h ;设置es：di指向目标地址

       mov cx,offset squend - offset squ ;设置cx为传输长度
       cld ;设置传输方向为证
       rep movsb

       mov ax,0
       mov es,ax
       mov word ptr es:[7ch*4],200h
       mov word ptr es:[7ch*4+2],0  ;设置中断向量表

       mov ax,4c00h
       int 21h

 squ:  mul ax
       iret

squend:
       nop

code ends

end start