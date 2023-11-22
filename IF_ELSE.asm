data segment
str db "enter a character :$"
newline db 13,10 ,"$"   
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:    
mov ax,@data
mov ds ,ax

lea dx ,str
mov ah ,09h
int 21h

mov ah,01h
int 21h
        
mov bh,al
 
lea dx,newline
mov ah,09h
int 21h
 
lea dx ,str
mov ah ,09h
int 21h

mov ah,01h
int 21h 

mov bl,al

lea dx,newline
mov ah,09h
int 21h  

cmp bh,bl
jbe @IF 


ja @else


@IF:
mov dl,bh
mov ah,02h
int 21h

jmp @end       
       
@else:
mov dl,bl
mov ah,02h
int 21h  
@end:  
  
mov ax, 4c00h  
int 21h    
ends

end start  
