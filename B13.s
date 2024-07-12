# B.13 Dado el siguiente programa:
# .data
# numero: .string "127"
# .text
# la x5,numero
# lb x6,0(x5)
# lb x7,1(x5)
# lb x8,2(x5)
# Indique qué valores quedan almacenados en x6,x7 y x8. ¿Qué ocurre si en vez de usar lb
# se utiliza lh o lw?


 .data
 numero: .string "127"
 .text
 la x5,numero
 lw x6,0(x5)
 lw x7,1(x5)
 lw x8,2(x5)
 
 #son los valores de 127 en ASCII
 #carga cualquier cosa wee
