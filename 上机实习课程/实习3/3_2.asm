assume cs:code

data segment
 
  
  db 'welcome to masm!'
  db 'AbCdEfGhIjKlMnOpQrStUvWxYz','$'

data ends

code segment

  start : mov ax,data
          mov ds,ax

	  mov si,16    
	  mov dh,5   ;����
	  mov dl,12  ;����
          mov ah,1   ;ѡ���ӳ���1
          int 7ch

	  mov si,0
	  mov ah,2    ;ѡ���ӳ���2
	  int 7ch

	  mov ax,4c00h
	  int 21h

code ends 

end start 