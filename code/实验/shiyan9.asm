assume cs:code,ds:data,ss:stack

data segment
     db 'welcome to masm!'
     db 02h,24h,71h ;三种颜色属性
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

       mov bx,0 ;bx清零，用来索引颜色
       mov ax,0b872h ;算出屏幕第12行中间的短起始地址，并存入ax中

       mov cx,3 ;三个字符串，循环三次
s3:    push cx  ;三个进栈操作，为外层循环保存寄存器的值
       push ax
       push bx

       mov es,ax  ;es保存第12行中间的短起始地址

       mov si,0 ; si用来索引代码列的字符
       mov di,0 ; di用来定位目标咧

       mov cx,10h
       ;循环16次，十六个字符
  s1:  mov al,ds:[si]
       mov es:[di],al
       inc si
       add di,2
       loop s1 ;此循环实现偶地址中存放字符

       mov di,1
       pop bx
       mov al,ds:10h[bx] ; 取颜色属性
       inc bx ;

       mov cx,10h ;也循环16次
  s2:  mov es:[di],al
       add di,2
       loop s2 ;此循环实现奇地址中存放颜色属性

       ;为下一趟外循环做准备
       pop ax
       add ax,0ah ;将段起始地址设为下一行
       pop cx
       loop s3 

       mov ax,4c00h
       int 21h
code ends

end start