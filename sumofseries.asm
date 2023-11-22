data segment
   
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:    

mov ax,@data
mov ds,ax

mov cx,20
mov ax,100
mov bx,ax
 
@find_sum:
sub bx,5      ;bx=95
add ax,bx     ;ax=ax+bx


loop @find_sum   ;cx=19
mov dx,ax  
            
mov ax, 4c00h  
int 21h    
ends

end start  
