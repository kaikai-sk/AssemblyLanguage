assume cs:code

code segment
 
    start : mov ax,cs
            mov ds,ax         ;ds:siָ��Ҫ���͵��ַ������׵�ַ
	    mov si,offset shuchu   
	    mov ax,0
	    mov es,ax
	    mov di,200h
	    mov cx,offset shuchuend-offset shuchu
	    cld
	    rep movsb
	    
	    mov ax,0
	    mov es,ax
	    mov word ptr es:[7ch*4],200h
	    mov word ptr es:[7ch*4+2],0

            mov ax,4c00h      ;ע��ʹ�����ӳ�������������Ҫ�����ʵ���λ�ã���������޷��������н���
	    int 21h

   shuchu : cmp ah,1    ;�ж�ѡ��ʹ���ĸ��ӳ���
            je s1
	    cmp ah,2
	    je s2

	s1 :   mov ax,0b800h 
               mov es,ax   ;�Դ�Ķε�ַ
	
               mov bx,0 
	       mov cl,dh
	       mov ch,0
	       inc cx
       hang :  add bx,0a0h              ;���� bx
               loop hang

	 lie : mov al,dl                ;����di
	       mov dl,2
	       mul dl
	       sub ax,2
	       mov di,ax

         run : mov al,[si]
	       cmp al,'$'     ;�ַ�Ϊ'$'ʱ�����ж�
	       je endl
	       cmp al,'A'    ;�ַ���A~Zʱ������Դ棬����siָ����һ���ַ�
	       jb turn
	       cmp al,'Z'
	       ja turn

	       mov es:[bx+di],al
	       mov byte ptr es:[bx+di+1],10110100b
	       add di,2
	 turn :inc si
	       jmp short run
	       
         endl :iret

	s2 : mov ax,0b800h
	     mov es,ax
	     mov di,0
	     mov cx,16
        a1 : mov al,[si]
	     mov es:[160*12+2*40][di],al
	     inc di
	     mov byte ptr es:[160*12+2*40][di],10101110b
	     inc di
	     inc si
	     loop a1

	     iret

shuchuend : nop
code ends

end start