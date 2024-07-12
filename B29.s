# B.29 Dado un vector de 10 elementos:
# .data
# vector: .word 100,-20,40,-365,400,65536,1,0,3,-10
# Utilizando las subrutinas MaxDir y Swap, recorra el vector desde el primer elemento hasta el
# último comparando direcciones consecutivas ej: vector[0] vs vector[1], luego vector[1] vs
# vector[2], luego vector[2] vs vector[3]..... En cada iteración si el primer elemento es mayor
# que el segundo, utilice swap para intercambiarlos. Al final de las iteraciones debe quedar el
# elemento mayor ubicado al final del vector. Utilice entonces un llamado a PrintVector para
# ver el mismo por consola.

 .data
     vector: .word 100,-20,40,-365,400,65536,1,0,3,-10
     
 .text
    
      la a0,vector
      addi x31,a0,0
      li x6,9
  loop:
      
      jal x1,MaxDir
      addi x5,x5,1
      blt x5,x6,loop
      
      add a0,x31,x0
      jal x1,PrintVec
      
end:      beq x0,x0,end

MaxDir:
    lw x7,0(a0)
    addi a0,a0,4
    lw x8,0(a0)
    bgt x7,x8,swap
    ret
    
swap:
    addi x9,x7,0
    addi a0,a0,-4
    sw x8,0(a0)
    addi a0,a0,4
    sw x9,0(a0)
    ret
    
  PrintVec:
      
      addi x20,a0,0
      li a7,1
      li x22,9
      
  loop1:
      
      li a7,11
      li a0,91
      ecall
      
      li a7,1
      lw a0,0(x20)
      addi x20,x20,4
      ecall
      
      addi x21,x21,1
      
      li a7,11
      li a0,93
      ecall
      
      ble x21,x22,loop1
      
      ret
         