    
  ## Función apply()
    m = matrix(1:9, nrow = 3, ncol = 3, byrow = T)
    m # =      [,1] [,2] [,3]
      #   [1,]    1    2    3
      #   [2,]    4    5    6
      #   [3,]    7    8    9
    
    apply(m, MARGIN = 2, FUN = sum) # = [1] 12 15 18
    
    apply(m, MARGIN = 1 , FUN = sum) # = [1] 6 15 24
    
    apply(m, MARGIN = c(1,2), FUN = function(x){x^2})
      # =      [,1] [,2] [,3]
      #   [1,]    1    4    9
      #   [2,]   16   25   36
      #   [3,]   49   64   81
    
  
  ## Operaciones
    m # =      [,1] [,2] [,3]
    #   [1,]    1    2    3
    #   [2,]    4    5    6
    #   [3,]    7    8    9
    
    ## Transpuesta de la matriz
    t(m) # =      [,1] [,2] [,3]
         #   [1,]    1    4    7
         #   [2,]    2    5    8
         #   [3,]    3    6    9
    
    ## Sumar matrices
    m + t(m) # =      [,1] [,2] [,3]
             #   [1,]    2    6   10
             #   [2,]    6   10   14
             #   [3,]   10   14   18
    
    ## Producto escalar por una matriz
    m*2 # =      [,1] [,2] [,3]
        #   [1,]    2    4    6
        #   [2,]    8   10   12
        #   [3,]   14   16   18
    
    ## Multiplicar matrices
    m%*%t(m) # =     [,1] [,2] [,3]
             #  [1,]   14   32   50
             #  [2,]   32   77  122
             #  [3,]   50  122  194
    
    ## Elevar matriz a n
    mtx.exp(m, 2) # =      [,1] [,2] [,3]
                  #   [1,]   30   36   42
                  #   [2,]   66   81   96
                  #   [3,]  102  126  150
    
    m%^%2 # =      [,1] [,2] [,3]
          #   [1,]   30   36   42
          #   [2,]   66   81   96
          #   [3,]  102  126  150
    
    
    ## Ejercicio
    A = matrix(c(c(2,0,2),c(1,2,3),c(0,1,3)),nrow=3,ncol=3,byrow=T)
    A # =      [,1] [,2] [,3]
      #   [1,]    2    0    2
      #   [2,]    1    2    3
      #   [3,]    0    1    3
    
    B = matrix(c(c(3,2,1),c(1,0,0),c(1,1,1)),nrow=3,ncol=3,byrow=T)
    B # =      [,1] [,2] [,3]
      #   [1,]    3    2    1
      #   [2,]    1    0    0
      #   [3,]    1    1    1   
    
    # Realizamos A*B
    A*B # =      [,1] [,2] [,3]
        #   [1,]    6    0    2
        #   [2,]    1    0    0
        #   [3,]    0    1    3
    
    # Realizamos A^2
    A%^%2 # =      [,1] [,2] [,3]
          #   [1,]    4    2   10
          #   [2,]    4    7   17
          #   [3,]    1    5   12
    
    mtx.exp(A,2) # =      [,1] [,2] [,3]
                 #   [1,]    4    2   10
                 #   [2,]    4    7   17
                 #   [3,]    1    5   12
    
    # Realizamos B^3
    B%^%3 # =      [,1] [,2] [,3]
          #   [1,]   47   28   16
          #   [2,]   12    7    4
          #   [3,]   20   12    7
    
    B%*%B%*% # =      [,1] [,2] [,3]
             #   [1,]   47   28   16
             #   [2,]   12    7    4
             #   [3,]   20   12    7
    
      
    ## Operaciones
    # Determinante de una matriz
    A # =      [,1] [,2] [,3]
      #   [1,]    2    0    2
      #   [2,]    1    2    3
      #   [3,]    0    1    3
    
    det(A) # = [1] 8
    
    # Rango de una matriz
    qr(A)$rank # = [1] 3
    
    # Inversa de una matriz inversible
    solve(A) # =        [,1]  [,2] [,3]
             #   [1,]  0.375  0.25 -0.5
             #   [2,] -0.375  0.75 -0.5
             #   [3,]  0.125 -0.25  0.5
    
    # Matriz identidad
    solve(A)%*%A # =      [,1] [,2] [,3]
                 #   [1,]    1    0    0
                 #   [2,]    0    1    0
                 #   [3,]    0    0    1
    
    # Resolver sistemas de ecuaciones lineales
    solve(A,c(1,2,3)) # = [1] -0.625 -0.375  1.125
    ?solve
    
    
    ## Valores y vectores propios
    eigen(A) # = eigen() decomposition
             #   $values
             #   [1] 4.511547+0.000000i 1.244226+0.474477i 1.244226-0.474477i
             #   $vectors
             #                [,1]                  [,2]                  [,3]
             #   [1,] 0.4022596+0i  0.7337066+0.0000000i  0.7337066+0.0000000i
             #   [2,] 0.7635534+0i  0.4042133-0.4371684i  0.4042133+0.4371684i
             #   [3,] 0.5051469+0i -0.2772580+0.1740634i -0.2772580-0.1740634i
    
    eigen(A)$values 
      # = [1] 4.511547+0.000000i 1.244226+0.474477i 1.244226-0.474477i
    eigen(A)$vectors
      # =              [,1]                  [,2]                  [,3]
      #   [1,] 0.4022596+0i  0.7337066+0.0000000i  0.7337066+0.0000000i
      #   [2,] 0.7635534+0i  0.4042133-0.4371684i  0.4042133+0.4371684i
      #   [3,] 0.5051469+0i -0.2772580+0.1740634i -0.2772580-0.1740634i 
    
    
    ## Numeros complejos
    C = matrix(c(3-2i, 5+3i, 1+2i, 2-1i),nrow=2,byrow=T)
    C # =      [,1] [,2]
      #   [1,] 3-2i 5+3i
      #   [2,] 1+2i 2-1i
    
    C%*%C # =       [,1]  [,2]
          #   [1,]  4+1i 34+0i
          #   [2,] 11+7i  2+9i
    
    eigen(C) # = eigen() decomposition
             #   $values
             #   [1] 4.902076+1.101916i 0.097924-4.101916i
    
             #   $vectors
             #                       [,1]                 [,2]
             #   [1,] 0.8483705+0.000000i  0.8519823+0.000000i
             #   [2,] 0.4695014+0.244614i -0.5216168-0.045189i
    
    solve(C, c(1-1i, 4)) # = [1] 0.4823529-1.0705882i 0.5294118+0.3176471i
    
    # Determinante
    det(C) # = Error in determinant.matrix(x, logarithm, ...) : 
    'determinant' # not currently defined for complex matrices
    prod(eigen(A)$values) # = 8+0i
    