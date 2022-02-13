   
  ## Listas

    x = c(1,5,-2,6,-7,8,-3,4,-9)
    x # = [1] 1  5 -2  6 -7  8 -3  4 -9
    
    L = list(nombre = "temperaturas", datos = x, media = mean(x),
             sumas = cumsum(x))
    L # = $nombre
      #   [1] "temperaturas"
      #   $datos
      #   [1] 1  5 -2  6 -7  8 -3  4 -9
      #   $media
      #   [1] 0.3333333
      #   $sumas
      #   [1] 1  6  4 10  3 11  8 12  3
    
    
  ## Obtener componentes de la lista
  
    L$nombre # = [1] "temperaturas"
    L$datos # = [1] 1 5 -2 6 -7 8 -3 4 -9
    L[[3]] # = [1] 0.3333333
    L[[4]] # = [1] 1 6 4 10 3 11 8 12  3
    L[4] # = $sumas
         #   [1] 1 6 4 10 3 11 8 12 3
    
    3*L[2] # = Error in 3 * L[2] : non-numeric argument to binary operator
    3*L[[2]] # = [1] 3 15 -6 18 -21 24 -9 12 -27
  
    
  ## Obtener información de una lista
    
    L # = $nombre
      #   [1] "temperaturas"
      #   $datos
      #   [1] 1  5 -2  6 -7  8 -3  4 -9
      #   $media
      #   [1] 0.3333333
      #   $sumas
      #   [1] 1  6  4 10  3 11  8 12  3
    names(L) # = [1] "nombre" "datos" "media" "sumas" 
    str(L) # = List of 4
           #    $ nombre: chr "temperaturas"
           #    $ datos : num [1:9] 1 5 -2 6 -7 8 -3 4 -9
           #    $ media : num 0.333
           #    $ sumas : num [1:9] 1 6 4 10 3 11 8 12 3

  