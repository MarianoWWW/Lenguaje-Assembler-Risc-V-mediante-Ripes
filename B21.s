#  B.21 Modifique el programa de B.20 para encontrar el valor máximo.


 .data
     vector: .word 3,5,6100,-20,40,-365,-400,-65536,0
 .text
     #Complete el programa
     
     la x5,vector
     lw a0,0(x5)
     
 loop:
     addi x5,x5,4
     lw a1,0(x5)
     jal x1,compara
     bnez a1,loop
     
     li a7,1
     ecall
     
     
 
 end: beq x0,x0,end
 
 compara:
     bgt a0,a1,volver
     addi a0,a1,0
     
     
volver:
    ret
