assume cs:code

code segment

start: mov ax,3456
       int 7ch ;调用7ch中断例程，计算ax中数据的平方

       add ax,ax
       adc dx,dx ;存放结果，即结果乘以2

       mov ax,4c00h
       int 21h

code ends

end start