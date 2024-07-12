# B.14 Basado en el ejercicio B.13, realice un programa que imprima por consola el valor del
# número en orden inverso (ej: 127 se imprime como 721). Luego considerando que los strings
# terminan con un carácter nulo (0x00) diseñe un programa que almacene el string “YVAN EHT
# NIOJ” y lo muestre por consola en orden inverso buscando primero la ubicación del caracter
# nulo y recorriendo en sentido inverso el string.

 .data
     numero: .string "YVAN EHT NIOJ"
     
 .text
     
     la x5,numero
     la x7,numero
     li a7,11
 loop:
     lb x6,0(x5)
     addi x5,x5,1
     bnez x6,loop
     
 #Resto 2 para emparejar
     addi x5,x5,-2
     
 loop1:
     lb x10,0(x5)
     ecall
     addi x5,x5,-1
     ble x7,x5,loop1
     
     
     
     
     
     
     
     
     
end: beq x0,x0,end
     
