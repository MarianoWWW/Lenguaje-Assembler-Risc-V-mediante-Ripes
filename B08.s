# B.08 Dadas las siguientes instrucciones en Ripes, indique qué valor se muestra en la salida
# “Console” luego de ejecutar las instrucciones. Relacione estos valores con la tabla ASCII.
# Indique qué modificaciones debe hacer a las instrucciones para lograr que imprima “5678”.

.text
     addi a0,x0,0x30
     addi a7,x0,11
     ecall
     addi a0,x0,0x31
     addi a7,x0,11
     ecall
     addi a0,x0,0x32
     addi a7,x0,11
     ecall
     addi a0,x0,0x33
     addi a7,x0,11
     ecall
     addi a0,x0,0x34
     addi a7,x0,11
     ecall

  # Se muestra el valor 01234, Se usa printchar, porque se trabaja con caracteres
  # Mi modificacion:
      
     addi a0,x0,0x35
     addi a7,x0,11
     ecall
     addi a0,x0,0x36
     addi a7,x0,11
     ecall
     addi a0,x0,0x37
     addi a7,x0,11
     ecall
     addi a0,x0,0x38
     addi a7,x0,11
     ecall
      
        
    
end:
    beq x0,x0,end