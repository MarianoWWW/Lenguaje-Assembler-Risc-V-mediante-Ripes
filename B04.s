?#  B.04 Luego de resolver B.02, almacene en x7 el valor de x5 menos uno.
 
 .text
 
     li x5,0x12345678
     addi x7,x5,-1
     
 end:
     beq x0,x0,end