data segment
s db "enter a character :$" 
char db ?  
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:    

mov ax,@data
mov ds ,ax 

lea dx,s
mov ah,09h
int 21h

mov ah,01h
int 21h
 
mov [char],al
cmp [char],'A'

jnae @end_if

cmp [char],'Z'
jnbe @end_if

then: 
mov dl,[char]
mov ah,02h
int 21h

@end_if:   
mov ax, 4c00h  
int 21h    
ends

end start  
