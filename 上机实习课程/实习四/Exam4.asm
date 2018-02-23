;*************************************************************
; �жϼ����̣���д7ch�ж����̣������а�װ
; �Ƚ��жϺ���DispString������ 0:200h ��
; �������ж�������7ch
;*************************************************************

assume cs:codeseg, ds:dt1, ss:stk

dt1 segment
db '12345678masm???!@#%^&*()---can not display chinese!!!!','$'
dt1 ends

stk segment stack
db 128 dup(0)
stk ends

;*************************************************************
codeseg segment
start:
mov ax,stk
mov ss,ax
mov sp,128	;����ջ��

mov ax,dt1
mov ds,ax
mov si,0

mov dh, 5
mov dl, 15
;mov bl, 01000001b
mov bl, 01100000b
mov ah, 0
call ExamIntFunc

mov ah, 1
call ExamIntFunc

mov ax,4c00h
int 21h

;*************************************************************
;�ж����̣� ExamIntFunc
;�ӹ���0:  ��ָ���ĵط���ʾ�ַ���
;������dh-�к�,dl-�к�,bl-��ɫ
; ds:[si]-�ַ�����ڣ���$Ϊ������

;�ӹ���1,  Fun2_DispString������Ļ���м���ʾ�ַ���
;*************************************************************
ExamIntFunc:
	jmp near ptr SStart
	table dw Fun1_DisplayStringInDefinePos, Fun2_DispString
SStart:	
	;push bx
	;push cx
	;push dx

	cmp ah,1
	ja JmpSSret
	cmp ah,0
	jb JmpSSret	;������ܺų���1-2���򷵻�

	mov cl,ah
	mov ch,0	;���ܺŸ���cx
	add cx,cx	;IPռ���ֽڣ�����Ҫ����2
	mov di,cx
	call word ptr table[di]	;���ݹ��ܺŽ�����ת, ������ call ,��Ϊ�Ӻ����� ret

JmpSSret:
	jmp near ptr SSret		;��ת������
	
;===================================================
;�ӹ���1:  ��ָ���ĵط���ʾ�ַ���
;������dh-�к�,dl-�к�,bl-��ɫ
; ds:[si]-�ַ�����ڣ���$Ϊ������
;===================================================
Fun1_DisplayStringInDefinePos: 
	pushf
	push ax
	push bx
	push cx
	push dx
	push si
	push di
	push es

	;����Ҫ�����λ�ã�����Ŀ�������ڴ��еĵ�ַ���ŵ�di��
	mov al,160
	mul dh		
	mov di,ax		;�˷� di = dh x 160�������ax�У�����di��
	mov al,2
	mul dl			;�˷� ax = dl x 2�������ax��
	add di,ax		;���������λ�ã�di = dh*160 + dl*2 + 0

	mov ax,0B800h		;�Դ��0ҳ��ʼ��ַ
	mov es,ax		;�趨�Դ�Ķ�

	DSID0: mov bh,[si]	;��ds:[si]����ȡ�ַ�����clΪ��ת
	cmp bh,'$'
	je DSID1			;����ַ�Ϊ$�������
	mov es:[di],bh		;��dh�У�dl�У�����ַ�
	mov es:[di+1],bl	;��bl�趨��ɫ
	add di,2
	inc si
	cmp bh,'$'
	jne DSID0

	DSID1: 
	pop es
	pop di
	pop si
	pop dx
	pop cx
	pop bx
	pop ax
	popf
	ret

;===================================================
;�ӹ���2,  Fun2_DispString������Ļ���м���ʾ�ַ���
;===================================================
Fun2_DispString: 
	jmp short dsStart
	astr db 'This is a interrupt test program!!!','$'

	dsStart:
	mov ax,0B800h
	mov es,ax		;�趨�Դ�Ķ� es
	mov di, 10*160 + 30*2	;��10��,��30��
	mov bl,01100000b	;��ɫ
	
	mov ax,seg Fun2_DispString	;��ȡ������ڶε�ַ
	mov ds,ax
	mov si,offset Fun2_DispString;��ȡ������ڶε�ƫ�Ƶ�ַ
	add si,2		;ȥ��ǰ��� jmp ָ��

	fds0: mov bh,[si]	;��cs:[si]����ȡ�ַ�����clΪ��ת
	cmp bh,'$'
	je fds1			;����ַ�Ϊ$�������
	mov es:[di],bh		;��dh�У�dl�У�����ַ�
	mov es:[di+1],bl	;��bl�趨��ɫ
	add di,2
	inc si
	cmp bh,'$'
	jne fds0

	fds1: 
	ret

SSret:
	;pop dx
	;pop cx
	;pop bx
	ret

ExamIntFuncEnd: nop

;*************************************************************
codeseg ends
end start
