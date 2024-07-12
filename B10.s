# B.10 Escriba un programa llamado “DIV8.s”. El mismo debe tomar un valor en el registro x5 y
# dividirlo por 8. NO se puede usar el método de restas sucesivas, y el mismo debe funcionar
# para valores positivos o negativos. Ej: si x5 =-25, el resultado es-3. Repase la instrucción
# SRAI.

.text

    li x5,-49
    srai x6,x5,3
    
#chequeo que no sea negativo, si lo es sigue el programa  
  
    bgez x5,end
    li x7,-7
    li x8,-8
    
#necesito saber si x5 es multiplo de 8 con el resto

loop:
    sub x5,x5,x8
    ble x5,x8,loop
    
#corrijo en base al resto:
    
    beq x0,x5,end
    addi x6,x6,1
    
end: 
    li a7,1
    addi a0,x6,0
    ecall

end1: beq x0,x0,end1
    
 