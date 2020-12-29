data segment
	number db 78h
	addrs dw offset fun0,offset fun1,offset fun2,offset fun3
	      dw offset fun4,offset fun5,offset fun6,offset fun7
data ends
code segment
    assume ds:data,cs:code     
    
start:
	mov ax,data
    	mov ds,ax   
	mov al,number
	mov dl,'#'
	cmp al,0
	jz disp
	mov cx,0
	mov bx,0;记录为1的下标
	jmp again
	
again:	
	cmp cx,7
	jz endcode
	
	mov bx,cx
	shr al,1
	jc next
	inc bx;下标自增	
	mov cx,bx
	
	jmp again
	
next:
	
	mov cx,bx
	inc cx
	
	shl bx,1
	jmp addrs[bx]
	
fun0:
	mov dl,'0'
	jmp disp
fun1:	
	mov dl,'1'
	jmp disp
fun2:
	mov dl,'2'
	jmp disp
fun3:	
	mov dl,'3'
	jmp disp
fun4:
	mov dl,'4'
	jmp disp
fun5:	
	mov dl,'5'
	jmp disp
fun6:
	mov dl,'6'
	jmp disp
fun7:	
	mov dl,'7'
	jmp disp
	;
disp:	
	mov dh,al
	mov ah,02h
	int 21h
	mov ah,04h
	mov al,dh
	jmp again

endcode:	
	mov ah,4ch
	int 21h
			
code ends
end start
