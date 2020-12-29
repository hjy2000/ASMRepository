DATAS SEGMENT
byte_var db 'ABC',10,10h,'EF',3 dup(-1,?,3 dup (4))
DATAS ENDS
Stack    segment stack
Stack    ends
CODES SEGMENT
ASSUME CS:CODES, DS:DATAS
START:
mov AX,DATAS
mov DS,ax
MOV AH,4cH
INT 21H
CODES ENDS
	END START
  
