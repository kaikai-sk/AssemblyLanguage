assume cs:code

code segment

start: mov ah,3
       call setscreen

       mov ax,4c00h
       int 21h

setscreen:
       jmp short set
       table dw sub1,sub2,sub3,sub4

  set: push bx
       
       cmp ah,3 ;判断功能号是否大于3
       ja sret
       mov bl,ah
       mov bh,0
       add bx,bx ;根据ah中的功能号计算对应子程序在table表中的便宜

       call word ptr table[bx]

 sret: pop bx
       ret

;编程：实现清屏
sub1: push bx 
      push cx
      push es
      mov bx,0b800h
      mov es,bx
      mov bx,0

      mov cx,2000
sub1s:
      mov byte ptr es:[bx],' '
      add bx,2
      loop sub1s

      pop es
      pop cx
      pop bx

      ret

;设置前景色
sub2: push bx
      push cx
      push es

      mov bx,0b800h
      mov es,bx
      mov bx,1

      mov cx,2000
sub2s:
      and byte ptr es:[bx],11111000b
      or es:[bx],al
      add bx,2
      loop sub2s

      pop es
      pop cx
      pop bx

      ret

;编程设置背景色
sub3: push bx
      push cx
      push es

      mov cl,4
      shl al,cl
      mov bx,0b800h
      mov es,bx
      mov bx,1

      mov cx,2000
sub3s:
      and byte ptr es:[bx],10001111b
      or es:[bx],al
      add bx,2
      loop sub3s

      pop es
      pop cx
      pop bx

      ret

sub4: push cx
      push si
      push di
      push es
      push ds

      mov si,0b800h
      mov es,si
      mov ds,si
      mov si,160
      mov di,0
      cld

      mov cx,24
sub4s:
      push cx
      mov cx,160
      rep movsb

      pop cx
      loop sub4s

      mov cx,80
      mov si,0
sub4s1:
      mov byte ptr [160*24+si],' '
      add si,2
      loop sub4s1

      pop ds
      pop es
      pop di
      pop si
      pop cx
      ret
      
code ends

end start