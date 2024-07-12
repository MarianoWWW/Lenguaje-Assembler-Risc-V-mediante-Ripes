# B.28 Dado un vector de 10 elementos:
#     .data
#     vector: .word 100,-20,40,-365,400,65536,1,0,3,-10
# Escriba una subrutina llamada PrintVector, la cual reciba en a0 la direcci?n de comienzo del
# vector y en a1 la cantidad de elementos del mismo. Imprima por consola los elementos del
# vector separados por coma (ej: 100,-20, 40,-365, 400, 65536, 1, 0, 3,-10 ).


.data
     vector: .word 100,-20,40,-365,400,65536,1,0,3,-10
     fin:

.text
    
    la a0,vector
    la x5,fin
    sub x6,x5,a0
    srai a1,x6,2
    jal x1,PrintVector
    
    
end: beq x0,x0,end

PrintVector:
    

    add x7,a0,x0
loop:
    lw a0,0(x7)
    li a7,1
    ecall
    addi x7,x7,4
    addi x8,x8,1
    
    li a7,11
    li a0,44
    ble a1,x8,ret #salta la ultima coma jeje
    ecall
    
    bgt a1,x8,loop
    
    ret:
        ret