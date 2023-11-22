data segment
 counter dw ?  
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:    

mov ax,@data
mov ds,ax
 
mov ax,1
;@repeat:
; 
;inc counter 
;add ax,4
;cmp ax,53
; 
;jne @repeat 

while:

cmp ax,49  
je end
inc counter
add ax,4
jmp while
end:  
mov ax, 4c00h  
int 21h    
ends

end start  
