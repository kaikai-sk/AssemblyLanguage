assume cs:code,ds:data,ss:stack,es:table

data segment
     db '1975','1976','1977','1978','1979','1980','1981','1982','1983'
     db '1984','1985','1986','1987','1988','1989','1990','1991','1992'
     db '1993','1994','1995'
     ;表示21年的21个字符串 0~53h

     dd 16,22,382,1356,2390,8000,16000,24486,50065,97479,140417,197514
     dd 345980,590827,803530,1183000,1843000,2759000,3753000,4649000,5937000
     ;表示21年公司总收入的21个dword型数据  54h~0a7h

     dw 3,7,9,13,28,38,130,220,476,778,1001,1442,2258,2793,4037,5635,8226
     dw 11542,14430,15257,17800
     ;表示21年公司雇员人数的21个word型数据  0a8h~0d1
data ends

table segment
      db 21 dup('year summ ne ?? ');
table ends

stack segment
      dw 8 dup(0)
stack ends

code segment

start: mov ax,data
       mov ds,ax
       mov ax,table
       mov es,ax
       mov ax,stack
       mov ss,ax
       mov sp,16

       mov bx,0
       mov si,0
       mov di,2
       mov dx,0
       mov ax,0

       mov cx,21
s1:    mov ax,ds:[0a8h+si]
       mov es:[0ah+bx],ax ;
       add si,2
       add bx,16
       loop s1 

       mov bx,0
       mov si,0
       mov di,0
       mov dx,0
       mov ax,0

       mov cx,21
s:     mov dx,ds:[si]
       mov ax,ds:[02h+si]
       mov es:[bx+0],dx
       mov es:[bx+2],ax   ;把年份复制到table段

       mov dx,ds:[54h+si]
       mov ax,ds:[56h+si]
       mov es:[bx+05h],dx
       mov es:[bx+07h],ax ;把总收入复制到table段

       mov ax,ds:[54h+si]
       mov dx,ds:[56h+si]
       div word ptr ds:[0a8h+di]
       mov es:[0dh+bx],ax

       add si,4
       add di,2
       add bx,16
       loop s

       
      
       mov ax,4c00h
       int 21h

code ends

end start
