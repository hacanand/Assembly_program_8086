data segment
  str1 db "hello world $"  
  str2 db 13,10,"2498795273979$"
ends
     ;13 --->move cursor to the begining
     ;10 ----> move cursor to next now
stack segment
    dw   128  dup(0)
ends

code segment
start:  
mov ax,data
mov ds,ax 



lea dx,str1 
mov ah,09h       ;string subroutine
int 21h 

lea ax, str2  
mov ah,09h       ;string subroutine
int 21h         
        

 
    
mov ax, 4c00h  
int 21h    
ends

end start  

