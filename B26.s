#   B.26 Escriba una subrutina llamada MaxDir. La misma va a recibir en a0 la dirección de un
# dato (número signado) y en a1 la dirección de otro dato (número signado). La subrutina debe
# retornar en a0 el valor 1 si el dato almacenado en la dirección de memoria apuntada por a0 es
# mayor que el dato almacenado en la dirección de memoria apuntada por a1.


.text

    li a0,45
    li a1,-55
    jal Maxdir
    
    end:beq x0,x0,end
    
    
Maxdir:
    bgt a0,a1,uno
    li a0,-1
    ret
    
uno:
    li a0,1
    ret
    