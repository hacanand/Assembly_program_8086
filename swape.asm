data segment
   
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:    

mov al,10100101b
mov bl,11111010b
;xchg al ,bl 
  
mov cl, bl
mov al,bl
mov bl,cl

    
mov ax, 4c00h  
int 21h    
ends

end start  
