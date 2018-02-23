;*************************************************************
; 中断简单例程，重写7ch中断例程，并进行安装
; 先将中断函数DispString拷贝到 0:200h 处
; 再设置中断向量表，7ch
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
mov sp,128	;设置栈区

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
;中断例程： ExamIntFunc
;子功能0:  在指定的地方显示字符串
;参数：dh-行号,dl-列号,bl-颜色
; ds:[si]-字符串入口，以$为结束符

;子功能1,  Fun2_DispString：在屏幕正中间显示字符串
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
	jb JmpSSret	;如果功能号超出1-2，则返回

	mov cl,ah
	mov ch,0	;功能号赋给cx
	add cx,cx	;IP占两字节，所以要乘以2
	mov di,cx
	call word ptr table[di]	;根据功能号进行跳转, 必须用 call ,因为子函数用 ret

JmpSSret:
	jmp near ptr SSret		;跳转到返回
	
;===================================================
;子功能1:  在指定的地方显示字符串
;参数：dh-行号,dl-列号,bl-颜色
; ds:[si]-字符串入口，以$为结束符
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

	;根据要输出的位置，计算目标区在内存中的地址，放到di中
	mov al,160
	mul dh		
	mov di,ax		;乘法 di = dh x 160，结果在ax中，传到di中
	mov al,2
	mul dl			;乘法 ax = dl x 2，结果在ax中
	add di,ax		;计算输出的位置：di = dh*160 + dl*2 + 0

	mov ax,0B800h		;显存第0页起始地址
	mov es,ax		;设定显存的段

	DSID0: mov bh,[si]	;从ds:[si]依次取字符，以cl为中转
	cmp bh,'$'
	je DSID1			;如果字符为$，则不输出
	mov es:[di],bh		;在dh行，dl列，输出字符
	mov es:[di+1],bl	;用bl设定颜色
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
;子功能2,  Fun2_DispString：在屏幕正中间显示字符串
;===================================================
Fun2_DispString: 
	jmp short dsStart
	astr db 'This is a interrupt test program!!!','$'

	dsStart:
	mov ax,0B800h
	mov es,ax		;设定显存的段 es
	mov di, 10*160 + 30*2	;第10行,第30列
	mov bl,01100000b	;颜色
	
	mov ax,seg Fun2_DispString	;获取标号所在段地址
	mov ds,ax
	mov si,offset Fun2_DispString;获取标号所在段的偏移地址
	add si,2		;去除前面的 jmp 指令

	fds0: mov bh,[si]	;从cs:[si]依次取字符，以cl为中转
	cmp bh,'$'
	je fds1			;如果字符为$，则不输出
	mov es:[di],bh		;在dh行，dl列，输出字符
	mov es:[di+1],bl	;用bl设定颜色
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
