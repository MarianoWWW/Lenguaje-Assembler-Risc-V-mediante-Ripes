?#  B.05 Escriba el valor 100 en x7 y luego programe un bucle utilizando el registro x8 como
 # contador de 10 a 0. En cada iteración del bucle debe incrementar en uno el valor de x7. Indique
 # con qué valor comienza x7 y en qué valor termina luego del bucle.
 
 .text
     
     li x7,100
     li x8,10
     li a7,1
     addi a0,x7,0
     ecall
     
     loop:
         addi x7,x7,1
         addi x8,x8,-1
         bnez x8,loop
         
     addi a0,x7,0
     ecall
     
     end:
         beq x0,x0,end