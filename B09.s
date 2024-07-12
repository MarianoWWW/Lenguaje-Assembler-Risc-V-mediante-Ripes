# B.09 Escriba un programa llamado “ITOAREVERSE.s”. El mismo debe grabar en el registro x5
# el valor decimal 1234. Luego debe dividir el mismo por 10 utilizando el método de restas
# sucesivas de B.07, mostrar el valor del resto por consola recuerde que el ASCII del carácter 0
# es 0x30 y el 9 es 0x39, y almacenar el resultado nuevamente en x5. Continuar ejecutando
# esta secuencia hasta que x5 sea cero.
# Ejemplo: en la primera iteración, se imprime 4 en consola (resto), y el número queda 123.
# En la segunda iteración, se imprime 3 en consola (resto), y el número queda 12. En la
# tercera iteración, se imprime 2 en consola y el número queda 1. En la cuarta iteración se
# imprime 1 en la consola y el programa termina.

.text

    li x5,1234
    addi x10,x5,0
    jal x1,DIVIDIR
    jal x1,DIVIDIR
    jal x1,DIVIDIR
    jal x1,DIVIDIR
    
    end: beq x0,x0,end
    
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
        li a7,1
        ecall
        addi x10,x8,0
        ret
    
    
        