DATAS SEGMENT
array dw 0,1,3,7

DATAS ENDS
Stack    segment stack
Stack    ends
CODES SEGMENT
ASSUME CS:CODES, DS:DATAS
START:
	
mov ax,DATAS
mov DS,ax
mov si,offset array

mov cl,0


again:
    mov ax,[si]
    cmp ax,0
    add cl,1
    add si,2
    jnz endcode
    jmp again
    

endcode:
    mov dl,cl
    add dl,30h

    MOV AH,02H
    INT 21H
    MOV AH,4cH
    INT 21H


CODES ENDS
	END START
  