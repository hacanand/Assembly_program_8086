data segment
str1 db 13,10,"enter a capital letter:$"  
str2 db 13,10,"small letter $"
char db ? 
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:    

mov ax,data
mov ds,ax

lea dx,str1
mov ah ,09h
int 21h

mov ah, 01h
int 21h
mov [char],al

add [char],20h 

lea dx,str2
mov ah ,09h
int 21h 

mov dl,[char]  
mov ah,02h
int 21h
 
    
mov ax, 4c00h  
int 21h    
ends

end start  
