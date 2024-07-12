#  B.23 Escriba una subrutina llamada Max, la cual debe recibir en a0 y en a1 (x10 y x11)
# (respectivamente) dos n?meros signados y devolver cual de los dos es el mayor en a0.

.text
    li a0,23
    li a1,-55
    jal x1,Max
    
    
    end: beq x0,x0,end
    
    
Max:
    bgt a0,a1,volver
    addi a0,a1,0
    
    
    
volver:
    ret