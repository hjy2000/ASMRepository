DATAS SEGMENT
x dw 2
y dw 3
z dw 4
v dw 1
rss dw ?
DATAS ENDS
Stack    segment stack
Stack    ends
CODES SEGMENT
ASSUME CS:CODES, DS:DATAS
START:
	
mov ax,DATAS
mov DS,ax

mov ax,x                          
      
imul y

sub ax,6

mov dx,ax

mov ax,v                        
mov bx,5
imul bx

add ax,dx
div z

mov rss,ax

MOV AH,4cH
INT 21H

CODES ENDS
	END START
  

