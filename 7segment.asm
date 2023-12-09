org 0000h
mov dptr,#0300h
mov b,#01h
mov a,#0ffh
mov p1,a
back:mov a,p1
     subb a,b
     movc a,@a+dptr
     mov p2,a
     ajmp back

org 0300h
seg_disp:
db 40h,79h,24h,30h,19h,92h
end
