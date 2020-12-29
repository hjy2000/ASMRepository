data segment
	bufX dw 3
	bufY dw 2
	bufZ dw ?
data ends
code segment
    assume ds:data,cs:code
 start:
    mov ax,data
    mov ds,ax
    mov ax,bufX
    sub ax,bufY
    
    cmp ax,0
    
    jl  gotomov2
    jmp gotomov1

gotomov1:
	mov ax,bufX  
	mov bufZ,AX
	mov ah,4ch
	int 21h  
		
gotomov2:
	mov ax,bufY 
	mov bufZ,AX
	mov ah,4ch
	int 21h
	
code ends
end start
