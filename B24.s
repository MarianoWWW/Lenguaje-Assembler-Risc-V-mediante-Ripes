#   B.24 Escriba una subrutina llamada MaxUnsigned, la cual debe recibir en a0 y en a1 (x10 y x11)
# (respectivamente) dos números sin signo y devolver cual de los dos es el mayor en a0.

.text
    li a0,23
    li a1,-55
    jal x1,Max
    
    
    end: beq x0,x0,end
    
    
Max:
    bgtu a0,a1,volver
    addi a0,a1,0
    
    
    
volver:
    ret