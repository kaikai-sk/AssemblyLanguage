assume cs:code

data segment
 
  
  db 'welcome to masm!'
  db 'AbCdEfGhIjKlMnOpQrStUvWxYz','$'

data ends

code segment

  start : mov ax,data
          mov ds,ax

	  mov si,16    
	  mov dh,5   ;行数
	  mov dl,12  ;列数
          mov ah,1   ;选定子程序1
          int 7ch

	  mov si,0
	  mov ah,2    ;选定子程序2
	  int 7ch

	  mov ax,4c00h
	  int 21h

code ends 

end start 