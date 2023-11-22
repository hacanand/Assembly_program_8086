data segment
str db "hello assembly!",13,10, '$'
count dw 10   
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:                    

mov ax,@data
mov ds,ax

mov cx,count
jcxz @skip

@for:
lea dx,str
mov ah,09h
int 21h 
    
loop @for

@skip:    
mov ax, 4c00h  
int 21h    
ends

end start  
