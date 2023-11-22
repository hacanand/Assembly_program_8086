data segment
 msg1 db "*$"
 msg2 db 13,10, "**$"
 msg3 db 13,10, "***$"
 msg4 db 13,10,"****$" 
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:    
 
mov ax,data
mov ds,ax    

lea dx,msg1
mov ah ,09h
int 21h  

lea dx,msg2
mov ah ,09h
int 21h

lea dx,msg3
mov ah ,09h
int 21h
 
    
mov ax, 4c00h  
int 21h    
ends

end start  
