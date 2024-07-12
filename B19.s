 # B.19 Dado un vector con valores enteros signados, escriba un programa que encuentre cuál es
 # el valor mínimo almacenado y lo informe por consola. El vector posee 10 elementos. Una vez
 # completado el programa modifique los valores del vector con distintos casos de prueba.
 
 
 .data
     vector: .word 100,-20,40,-365,400,65536,1,0,3,-1000
     fin:
 .text
 #Complete el programa
 
     li x9,0
     la x5,vector
     la x6,fin
     sub x7,x6,x5
     srli x8,x7,2 #ya tengo la cantidad de elementos
     
     lw a0,0(x5) #coloco en x9 mi primer valor y procedo a comparar
     
 loop:
     addi x5,x5,4
     lw a1,0(x5)
     jal compara
     addi x9,x9,1
     bgt x8,x9,loop
 
     li a7,1
     ecall
 
 
 end: beq x0,x0,end
 
 compara:
     bgt a1,a0,volver
     addi a0,a1,0
     
     
 volver:
     ret