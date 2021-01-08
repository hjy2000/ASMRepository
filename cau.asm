DATAS SEGMENT
x dw -1
y dw 2
z dw 3
v dw ?

DATAS ENDS
Stack    segment stack
Stack    ends
CODES SEGMENT
ASSUME CS:CODES, DS:DATAS
START:
	
mov ax,DATAS
mov DS,ax

mov ax,x                          
      
imul y;x*y
mov dx,ax

mov ax,x                        
mov bx,8
imul bx

sub ax,dx

add ax,9

mov dx,ax;8x-x*y+9

div z

mov v,ax

mov dx,v

MOV AH,4cH
INT 21H

CODES ENDS
	END START
  

