mov dptr ,#3000h          ;immediate addressing 
movx a,@dptr  ;indirect addressing 
mov  r0,a
inc dptr
movx a,@dptr
mov b,a
mov a,r0
div ab
mov dptr ,#3020h
movx @dptr,a
inc dptr
mov a,b
movx @dptr ,a
end