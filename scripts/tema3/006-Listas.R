  
  x = c(1,5,-2,6,-7,8,-3,4,-9)
  x # = 1  5 -2  6 -7  8 -3  4 -9
  
  L = list(nombre = "temperaturas", datos = x, media = mean(x),
           sumas = cumsum(x))
  L # = $nombre
    #[1] "temperaturas"
    # $datos
    # 1  5 -2  6 -7  8 -3  4 -9
    # $media
    # 0.3333333
    # $sumas
    # 1  6  4 10  3 11  8 12  3
  
  