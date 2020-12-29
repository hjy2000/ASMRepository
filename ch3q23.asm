data segment
	
data ends

code segment
    assume ds:data,cs:code     
    
start:
	mov ax,data
    	mov ds,ax   
	mov al,20h
	mov dl,0h
	mov bx,0040h
	mov ds,bx
	mov bx,0h
search:
	cmp al,[bx]
	jz counter
	
counter:
	inc dl
	inc bx
  	jo endcode
  	jmp search 	
  	
endcode:  
	;mov dl,dl
	mov ah,2
  	int 21h
	mov ah,4ch
  	int 21h
		
code ends
end start
