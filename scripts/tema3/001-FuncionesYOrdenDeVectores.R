  x = 1:10

  x # = 1  2  3  4  5  6  7  8  9 10

  x + pi 

  pi*x

  sqrt(x)

  2^x

  x^2

  # sapply
    
    sapply(x, FUN = function(elemento){sqrt(elemento)})
    
    cd = function(x){ summary(lm((1:4)~c(1:3,x)))$r.squared }
    
    cd(5) # = 0.9657143
    
    cd(6) # = 0.9142857
    
    cd(x) # = ERROR
    
    sapply(x, FUN = cd)
    

  1:10 + 1:10 # = 2  4  6  8 10 12 14 16 18 20
  
  (1:10)*(1:10) # = 1   4   9  16  25  36  49  64  81 100
  
  (1:10)^(1:10) # = 1 4 27 256 3125 46656 823543 16777216 387420489 10000000000
  
  n = 1:10
  
  x = 2*3^(n/2)-15

  # x = -11.535898  -9.000000  -4.607695   3.000000  16.176915  39.000000 
  #     78.530744 147.000000 265.592231 471.000000
  
  
  # Funciones
    
    d = c(1,2,3,4)
    # Longitud del vector
    length(d) # = 4
    
    # Máximo del vector
    max(d) # = 4
    
    # Mínimo del vector
    min(d) # = 1
    
    # Suma de las entradas del vector
    sum(d) # = 10
    
    # Producto de las entradas del vector
    prod(d) = 24
    
    
    cuadrado = function(x){x^2}
    v = c(1,2,3,4,5,6)
    sapply(v, FUN = cuadrado) # 1 4 9 16 25 36
    
    # Media aritmética de las entradas del vector
      mean(v) # = 3.5
      sum(v)/length(v) # = 3.5
      
    # Vector de las diferencias sucesivas entre las entradas del vector
      diff(v) # = 1 1 1 1 1
    
    # Sumas acumuladas de las entradas del vector
      cumsum(v) # = 1 3 6 10 15 21
    
      cummax(v) # = 1 2 3 4 5 6 
      
      cummin(v) # = 1 1 1 1 1 1
    
    # Productos acumulados de las entradas del vector
      cumprod(v) # = 1 2 6 24 120 720
         
  # Orden
    
    v = c(1,7,5,2,4,6,3)
    # Orden de forma natural
      sort(v) # = 1 2 3 4 5 6 7
      
    # Invertir el orden de los elementos del vector
      rev(v) # = 3 6 4 2 5 7 1
    
    # Ejercicio
      # - Combinad las dos funciones anteriores, `sort` y `rev` 
      # para crear una función que dado un vector $x$ os lo devuelva 
      # ordenado en orden decreciente.
      x = c(9,6,7,2,8,4,5,1,3)
      sort(x) -> x # = 1 2 4 4 5 7 8 9
      rev(x) # 9 8 7 5 4 4 2 1
    
      ?sort
      
      x = c(9,6,7,2,8,4,5,1,3)
      sort(x, decreasing = TRUE) # = 9 8 7 6 5 4 3 2 1
      
      