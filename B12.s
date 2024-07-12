# B.12 Escriba el programa ?ITOA.s? basado en los puntos anteriores pero ahora el n?mero a
# convertir no es solamente el 1024 en x5 sino que puede tener cualquier valor positivo en x5.
# Ejemplo: Si x5=0xBC614E , entonces debe imprimir por consola el 12345678.

.data
     var1: .word 0,0,0,0,0,0,0,0
     end:
 
 .text
    la x18,var1
    la x16,end
    li x5,0xff
    li x31,7
    li x20,0
    li a7,1
    addi x10,x5,0
    jal x1,DIVIDIR
    addi x18,x18,4
    jal x1,DIVIDIR
    addi x18,x18,4
    jal x1,DIVIDIR
    addi x18,x18,4
    jal x1,DIVIDIR
    
#listo, ahora a hacer un loop que muestre el vector de atras hacia adelante:
    
loop1:
    addi x16,x16,-4
    lw x10, 0(x16)
    ecall
    addi x20,x20,1
    ble x20,x31,loop1
    
    
    
 
    
end1: beq x0,x0,end1
    
    DIVIDIR:
        li x6,10
        li x7,9
        li x8,0
        
        ble x10,x7,print
        
        loop:
        addi x8,x8,1
        sub x10,x10,x6
        bgt x10,x7,loop
        
        print:
     
    #?parte nueva:
        sw x10,0(x18)
        
        addi x10,x8,0
    
        ret
        
