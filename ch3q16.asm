data segment
    mess db 'input error!',0ah,0dh,'$'
data ends
code segment
    assume ds:data,cs:code
 start:
    mov ax,data
    mov ds,ax
    mov ah,01h
    int 21h
    cmp al,'A'
    jb err
    cmp al,'z'
    ja err
    add al,20h
    mov dl,al
    mov ah,02h
    int 21h
    jmp exit
    
err:

mov dx,offset mess
mov ah,09h
int 21h

exit:
	mov ah,4ch
     	int 21h
     	
code ends
end start
