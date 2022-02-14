    
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
    