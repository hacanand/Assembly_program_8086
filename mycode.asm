data segment
    
ends
 stack segment
    dw 128 dup(0)
 ends
 code segment
    start:
   ; mov ax,30
;    mov bx,30h
;    mov al,127
;    mov ax,0f1ach  
;    mov ax,-123
;    mov ax,4c00h 
;    mov 1234h,bx 

     mov cx,'B'
    
    int 21h
 ends
 