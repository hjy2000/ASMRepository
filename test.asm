Data     segment
         x dw -1 
         y dw 720 
         z dw 0 
         v dw 1000 
         Sum1 dw ? 
         Sum2 dw ?
Data     ends
Stack    segment stack
Stack    ends
Code     segment
Assume   cs:code,ds:data
Start:   mov ax,data
	 mov ds,ax   
         mov ax,x                   
         mov bx,y
         imul bx
         mov bx,z
         add ax,bx
         sub ax,2d0h
         mov bx,v
         sub bx,ax
         mov ax,bx
         cbw
         mov bx,x
         idiv bx                   
         mov sum1,ax         
         mov sum2,dx 
         mov ax,4c00h   
         int 21h 
Code     ends    
         end start
