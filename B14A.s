# B.14 Basado en el ejercicio B.13, realice un programa que imprima por consola el valor del
# número en orden inverso (ej: 127 se imprime como 721). Luego considerando que los strings
# terminan con un carácter nulo (0x00) diseñe un programa que almacene el string “YVAN EHT
# NIOJ” y lo muestre por consola en orden inverso buscando primero la ubicación del caracter
# nulo y recorriendo en sentido inverso el string.

 .data
     numero: .string "123457"
 .text
     la x5,numero
     lb x6,0(x5)
     lb x7,1(x5)
     lb x8,2(x5)
 
 #mi programa
 
     li a7,11   #para ecall
 
 #longitud del string    
     li x18,3   #contador
     add x10,x8,x0
     ecall
     add x10,x7,x0
     ecall
     add x10,x6,x0
     ecall
     
     

 end: beq x0,x0,end

