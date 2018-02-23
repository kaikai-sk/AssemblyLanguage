assume cs:code,ds:data

data segment
     db 'AABBccddEEFFaaSSSKKKK','$'
data ends

code segment

start: mov ah,2
       int 7ch
       
       mov dh,3 ;第三行
       mov dl,5 ;第五列
       mov ah,1
       mov si,0
       mov ax,data
       mov ds,ax
       int 7ch
       mov ax,4c00h
       int 21h

code ends

end start