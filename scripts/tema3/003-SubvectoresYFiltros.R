  
  x = seq(3, 50, by = 3)
  x # = 3 6 9 12 15 18 21 24 27 30 33 36 39 42 45 48
  
  x[3] # = 9
  
  x[length(x)] # = 48
  x[length(x)-1] # = 45
  x[length(x)-2] # = 42
  
  x[-3] # = 3 6 12 15 18 21 24 27 30 33 36 39 42 45 48
  
  x[4:8] # = 12 15 18 21 24
  x[8:4] # = 24 21 18 15 12
  
  x[seq(0, length(x), by = 2)] # = 6 12 18 24 30 36 42 
  x[seq(1, length(x), by = 2)] # = 3 9 15 21 27 33 39 45
  
  x[-seq(0, length(x), by = 2)] # = 3  9 15 21 27 33 39 45
  x[-seq(1, length(x), by = 2)] # = 6 12 18 24 30 36 42 48
  
  x[(length(x)-4):length(x)] # = 36 39 42 45 48
  
  x # = 3 6 9 12 15 18 21 24 27 30 33 36 39 42 45 48
  x[c(1,5,6)] # = 3 15 18
  
  x[x==12] # = 12
  x[x!=12] # = 3 6 9 15 18 21 24 27 30 33 36 39 42 45 48
  
  x[x>=30] # = 30 33 36 39 42 45 48
  x[x<=30] # = 3 6 9 12 15 18 21 24 27 30
  x[x>30] # = 33 36 39 42 45 48
  x[x<30] # = 3 6 9 12 15 18 21 24 27
  
  x[x>20 & x<40] # = 21 24 27 30 33 36 39
  
  x[x<10 | x>40] # = 3 6 9 42 45 48
  
  x[x<10] # = 3 6 9
  x[!x<10] # = 12 15 18 21 24 27 30 33 36 39 42 45 48
  
  x[x%%2==0] # = 6 12 18 24 30 36 42 48
  x[x%%2==1] # = 3 9 15 21 27 33 39 45
  
  
  x>30 # = FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE 
       #   TRUE TRUE TRUE TRUE TRUE TRUE
  x[x>30] # = 33 36 39 42 45 48
  
  
  
  x = c(1,2,3,4,5,6,7,8,9)
  y = c(-3,-2,-1,0,1,2,3,4,5)
  
  x[y>0] # = 5 6 7 8 9
  
  y # = -3 -2 -1 0 1 2 3 4 5
  which(y>4) # = 9 (posicion 4,5 y 6)
  y[which(y>4)] # = 5
  which(y>-1 & y<3) # = 4 5 6 (posicion 4,5 y 6)
  y[which(y<0|y>2)] # = -3 -2 -1  3  4  5
  which(y>1|y%%2==0) # = 2 4 6 7 8 9 (posicion 2,4,6,7,8 y 9)
  
  y # =-3 -2 -1 0 1 2 3 4 5
  which.min(y) # = 1 (posicion 1)
  y[which.min(y)] # = -3
  which.max(y) # = 9
  y[which.max(y)] # = 5
  
  fix(x)
  x # = 1 2 3 4 5 6 7 9 9
  which.max(x) # 8 (la primera posicion que aparece el numero mas grande)
  which(x == max(x)) # = 8 9 (posicion 8 y 9)
  x[which(x == max(x))] # = 9 9 
  
  x[x<4 & x>7] # = numeric(0)
  
  which(x<4 & x>7) # = integer(0)
  
  
  
  x = c()
  x # = NULL
  
  y = NULL
  y # = NULL
  
  z = c(x,2,y,4)
  z # = 2 4
  