 # B.11 Escriba el programa ?ITOA1024.s? basado en el punto B.09, de forma tal que el n?mero
 # impreso por consola sea ?1234? y no ?4321?. Recomendamos almacenar cada d?gito en
 # memoria e ir recorriendo la memoria en orden inverso para imprimir por consola. Puede crear
 # en memoria .data una variable de 4 bytes que almacene ceros inicialmente y utilizar este
 # espacio de memoria para invertir el n?mero.
 
 .data
     var1: .word 0,0,0,0
     end:
 
 .text
    la x18,var1
    la x16,end
    li x5,1234
    li x31,3
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
        
