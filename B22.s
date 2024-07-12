#   B.22 Dado un vector con valores enteros sin signo, escriba un programa que encuentre cuál es
# el valor mínimo almacenado y lo informe por consola. El vector posee N elementos, pero se
# sabe que el último elemento del mismo siempre es 0, el cual no debe ser tenido en cuenta en
# el resultado. Una vez completado el programa modifique los valores del vector con distintos
# casos de prueba.



 .data
     vector: .word 100,20,40,365,400,-65536,1,0
     var1: .string "No se cargaron numeros"
 .text
     #Complete el programa
     
     la x5,vector
     lw a0,0(x5)
     beqz a0, end2
 
 loop1:
     addi x5,x5,4
     lw a1,0(x5)
     beqz a1,print
     jal x1,compara
     bnez a1,loop1
     

 print:
    li a7,1
    ecall    
     
 
 end: beq x0,x0,end
 
 end2:
     li a7,11
     la x31,var1
loop:
    lb a0,0(x31)
    ecall
    addi x31,x31,1
    bnez a0,loop
    
end1: beq x0,x0,end1

compara:
    bgtu a1,a0,regresa
    addi a0,a1,0
    
regresa:
    ret