data segment
m dw 5
n dw 3
product dw 0   
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:    

mov ax,@data
mov ds,ax
 
mov ax,m    ;5
mov bx,n   ;3

@repeat:
 add product,ax

dec bx
cmp bx ,0
jne @repeat     
mov ax, 4c00h  
int 21h    
ends

end start  
