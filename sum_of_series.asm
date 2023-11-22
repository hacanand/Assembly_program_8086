data segment
totalsum dw 0   
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:    

mov ax,@data
mov ds,ax

mov cx,12
mov ax,1
mov bx,5
@for:
add ax,bx
add bx ,4

loop @for 
mov totalsum,ax    
mov ax, 4c00h  
int 21h    
ends

end start  
