assume cs:code,ds:data

data segment
;考号，共占用64字节 0~39h
db '42110001', '42110002', '42110003', '42110004'
db '42110005', '42110006', '42110007', '42110008'
;姓名，共占24字节 40~~57h
db 'qgh','eay','lfd','irc','cxg','wkf','dux','nfo'
;性别，共占8字节 58~60h
db 'f','f','m','f','m','m','m','f'
;考试分数，共占24字节 60~~79h
db '267','621','467','604','344','640','306','239'
data ends

code segment

start: mov ax,data
       mov ds,ax
       mov si,0

       mov ax,0b800h
       mov es,ax
       mov di,0

       call id ;
       call name ;
       call sex
       call score

       mov ax,4c00h
       int 21h

id:   push si
      push ax
      push cx
      
      mov si,0
      mov di,12*160+40

      mov cx,8
 s1:
      push cx 
      mov cx,8
 s2:  mov al,ds:[si]
      mov byte ptr es:[di],al
      mov byte ptr es:[di+1],2;
      add si,1
      add di,2
      loop s2

      pop cx
      sub di,16
      add di,160
      loop s1

      pop cx
      pop ax
      pop si
      ret

name: push si
      push ax
      push di
      push cx

      mov si,40h
      mov di,12*160+40+24

      mov cx,8
  s3: push cx
      
      mov cx,3
  s4: mov al,ds:[si]
      mov byte ptr es:[di],al
      mov byte ptr es:[di+1],2
      add si,1
      add di,2
      loop s4

      pop cx
      sub di,6
      add di,160
      loop s3
      
      pop cx
      pop di
      pop ax
      pop si
      ret

sex:  push cx
      push ax
      push di
      push si

      mov si,58h
      mov di,12*160+78

      mov cx,8
  s5: mov al,ds:[si]
      mov byte ptr es:[di],al
      mov byte ptr es:[di+1],2
      add si,1
      add di,160
      loop s5

      pop si
      pop di
      pop ax
      pop cx
      ret

score:
      push cx
      push ax
      push si
      push di
      
      mov si,61h
      mov di,12*160+78+10
      mov cx,8
  s6:
      push cx
      mov cx,3
  s7: mov al,ds:[si]
      mov byte ptr es:[di],al
      mov byte ptr es:[di+1],2
      add si,1
      add di,2
      loop s7

      pop cx
      sub di,6
      add di,160
      loop s6

      pop di
      pop si
      pop ax
      pop cx
      ret
code ends

end start