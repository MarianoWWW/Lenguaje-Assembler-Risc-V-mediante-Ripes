 # B.17 Modifique el programa B.16 para que pueda aceptar n?meros de exactamente 4 d?gitos.
 
  .data
 numero: .string "9234"
 umil: .word 0,1000,2000,3000,4000,5000,6000,7000,8000,9000
 centena: .word 0,100,200,300,400,500,600,700,800,900
 decena: .word 0,10 ,20, 30, 40, 50, 60, 70, 80, 90
 unidad: .word 0,1 ,2 ,3, 4, 5, 6, 7, 8, 9
 .text
 #Lectura
 la x5,numero
 lb x18,0(x5)
 addi x18,x18,-48
 lb x6,1(x5)
 addi x6,x6,-48
 lb x7,2(x5)
 addi x7,x7,-48
 lb x8,3(x5)
 addi x8,x8,-48
 
 #Calculo umil
 addi x9,x0,0
 la x10,umil
 slli x18,x18,2 #direccion al byte a palabra
 add x10,x10,x18
 lh x11,0(x10)
 add x9,x9,x11
 #Calculo Centena
 la x10,centena
 slli x6,x6,2 #direccion al byte a palabra
 add x10,x10,x6
 lh x11,0(x10) #centena almacena valores mayores al rango [-128:127]
 add x9,x9,x11
 #Calculo Decena
 la x10,decena
 slli x7,x7,2 #direccion al byte a palabra
 add x10,x10,x7
 lb x11,0(x10)
 add x9,x9,x11
 #Calculo Unidad
 la x10,unidad
 slli x8,x8,2 #direccion al byte a palabra
 add x10,x10,x8
 lb x11,0(x10)
 add x9,x9,x11
 
 
 end: beq x0,x0,end