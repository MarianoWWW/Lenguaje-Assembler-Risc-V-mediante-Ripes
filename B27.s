# B.27 Escriba una subrutina llamada Swap. La misma va a recibir en a0 la dirección de un dato
# (número signado) y en a1 la dirección de otro dato (número signado). La subrutina debe
# intercambiar el contenido de ambos. Ej: Si a0=0x10000000 , quiere decir que en la dirección
# de memoria 0x1000000 existe un dato (supongamos-10). Luego si a1=0x10000004, quiere
# decir que en 0x10000004 existe otro dato (supongamos 5). Si se llama a la subrutina con esas
# referencias a memoria la misma debe retornar habiendo guardado 5 en 0x10000000 y-10 en
# 0x10000004.


.text

    li a0,45000
    li a1,-55
    jal Swap
    
    end:beq x0,x0,end
    
    
Swap:
    
    add x5,a0,x0
    add a0,a1,x0
    add a1,x5,x0
    
    ret
    