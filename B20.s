 # B.20 Dado un vector con valores enteros signados, escriba un programa que encuentre cuál es
# el valor mínimo almacenado y lo informe por consola. El vector posee N elementos, pero se
# sabe que el último elemento del mismo siempre es 0. Una vez completado el programa
# modifique los valores del vector con distintos casos de prueba.


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
     bgt a1,a0,volver
     addi a0,a1,0
     
     
volver:
    ret
