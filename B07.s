# B.07 Escriba un programa que dado un número igual o mayor a 10 almacenado en x5 (ej: x5=234)
# el mismo sea dividido por 10, dejando en x7 la cantidad de veces que entra 10 en ese número
# y en x8 el resto. NO utilizar la instrucción de división, se puede resolver con un bucle
# contando cuantas veces se le pueden restar 10 a x5 y que el mismo sea mayor que 10. Almacene
# el programa en su computadora como “div_x5_por_10.s”

.text

    li x5,10
    li x6,10
    li x7,0
    li x9,9
    
divisiones:
    
    sub x5,x5,x6
    addi x7,x7,1
    bgt x5,x9,divisiones
    
    addi, x8,x5,0
    

    
    
    
    
    
    
end:
    beq x0,x0,end