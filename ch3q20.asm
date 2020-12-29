data segment
	bufX dw 3
	bufY dw 2
	bufZ dw 2
data ends
code segment
    assume ds:data,cs:code
 start:
    mov ax,data
    mov ds,ax   
    mov ax,bufX
    sub ax,bufY  
    cmp ax,0   
    jne st2
    je  st1

st1:
	mov dx,1  
	mov ax,bufY
	sub ax,bufZ
	cmp ax,0
	je st3
	jne st4
		
st2:
	mov dx,0
	mov ax,bufY
	sub ax,bufZ
	cmp ax,0
	je st3
	jne st4
	
st3:
	add dx,1
	cmp dx,2
	je two
	jne one
	
st4:
	cmp dx,1
	je one
	jne zero
two:
 	mov dl,32h
 	mov ah,2
 	int 21h
 	mov ah,4ch
 	int 21h
one:
	mov dl,31h
 	mov ah,2
 	int 21h
 	mov ah,4ch
 	int 21h
zero:	
	mov dl,30h
 	mov ah,2
 	int 21h
 	mov ah,4ch
 	int 21h
code ends
end start
