data segment
 res dw  ?
ends

;stack segment
;    dw   128  dup(0)
;ends
;
code segment
start:    

mov ax,1
mov bx,2
mov cx,3
mov dx,4 
mov di,5
add ax,bx  

add ax,cx
add ax,dx
add di,ax

 
 
int 21h    
ends

end start  
