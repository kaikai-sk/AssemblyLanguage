assume cs:code,ds:data,ss:stack

data segment
     ;考号，共占用64字节    0~39h
     db '42110001', '42110002', '42110003', '42110004'
     db '42110005', '42110006', '42110007', '42110008'

     ;姓名，共占24字节      40~57h
     db 'qgh','eay','lfd','irc','cxg','wkf','dux','nfo'
	
     ;性别，共占8字节       58~5fh
     db 'f','f','m','f','m','m','m','f'
	
     ;考试分数，共占24字节  60~77h
     db '267','621','467','604','344','640','306','239'

     ;字符属性 78h
     db 0c0h ;11000000 闪烁，红底，黑字
data ends

stack segment
     dw 8 dup(0)
stack ends

code segment

start: mov ax,data
       mov ds,ax
       mov ax,stack
       mov ss,ax
       mov sp,10h
       mov ax,0b870h
       mov es,ax ;ES:显存第一行的段地址

       mov bx,0 ;指示行
       mov si,0 ;
       mov di,0 ;

       call id
       call name
       call sex
       call mark ;

       mov ax,4c00h
       int 21h

id:                  ;屏幕显示学号
       mov cx,8
s:     push cx
       
	       mov cx,8
	  s1:  
	       mov al,ds:[si]
	       mov es:[bx+di],al ;拷贝字符

	       mov al,ds:[78h]
	       mov es:[bx+di+1],al ;拷贝属性

	       add si,1
	       add di,2
	       loop s1

       mov di,0
       add bx,160
       pop cx
       loop s

       ret

name:
       mov bx,0 ;指示行
       mov si,0 ;
       mov di,0 ;
       mov cx,8
s2:    push cx
    
		 mov cx,3
	     s3: mov al,ds:[40h+si]
	         mov es:[24+bx+di],al

	         mov al,ds:[78h]
	         mov es:[24+bx+di+1],al

		 add si,1
		 add di,2
		 loop s3
 
       add bx,160
       mov di,0
       pop cx
       loop s2

       ret

sex:
       mov bx,0 ;指示行
       mov si,0 ;
       mov di,0 ;
       mov cx,8
s4:  
       mov al,ds:[58h+si]
       mov es:[38+bx+di],al

       mov al,ds:[78h]
       mov es:[38+bx+di+1],al
 
       add bx,160
       add si,1
       mov di,0
       loop s4

       ret
     
mark:  
      mov bx,0 ;指示行
       mov si,0 ;
       mov di,0 ;
       mov cx,8
s5:    push cx
    
		 mov cx,3
	     s6: mov al,ds:[60h+si]
	         mov es:[48+bx+di],al

	         mov al,ds:[78h]
	         mov es:[48+bx+di+1],al

		 add si,1
		 add di,2
		 loop s6
 
       add bx,160
       mov di,0
       pop cx
       loop s5

       ret
       
code ends

end start

       