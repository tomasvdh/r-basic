  
  2^pi > pi^2 # = FALSE
  2^pi # = 8.824978
  pi^2 # = 9.869604
  
  12345678 %% 9 == 0 # = TRUE
  
  length(1:100) > 4 # = TRUE
  length(1:100) > 400 # = FALSE
  
  x = 1:10
  x[3] # = 3
  x[3] = 32
  x # = 1 2 32 4 5 6 7 8 9 10
  
  x[11] # = NA
  x[11] = 15
  x # = 1 2 32 4 5 6 7 8 9 10 15
  
  x[2:5] = x[2:5] + 3
  x # = 1  5 35 7 8 6 7 8 9 10 15
  
  x[(length(x)-2):length(x)] = 0
  x # = 1 5 35 7 8 6 7 8 0 0 0
  
  x[length(x)+5] = 9
  x # = 1 5 35 7 8 6 7 8 0 0 0 NA NA NA NA 9
  
  sum(x) # = NA
  prod(x) # = NA
  cumsum(x) # = 1 6 41 48 56 62 69 77 77 77 77 NA NA NA NA NA
  mean(x) # = NA
  
  sum(x, na.rm = TRUE) # = 86
  prod(x, na.rm = TRUE) # = 0
  mean(x, na.rm = TRUE) # = 7.166667
  
  which(x == NA) # = integer(0)
  is.na(x) # = FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE 
           #   FALSE FALSE TRUE TRUE TRUE TRUE FALSE
  which(is.na(x)) # = 12 13 14 15
  x[which(is.na(x))] # = NA NA NA NA
  
  y = x
  y[is.na(y)] # = NA NA NA NA
  y[is.na(y)] = mean(y, na.rm = TRUE)
  y # = 1.000000 5.000000 35.000000 7.000000 8.000000 6.000000 
    #   7.000000 8.000000 0.000000 0.000000 0.000000 7.166667 7.166667
    #   7.166667 7.166667 9.000000
  
  x[is.na(x)] # = NA NA NA NA
  x[!is.na(x)] # = 1 5 35 7 78 6 7 8 0 0 0 9
  
  sum(x[!is.na(x)]) # = 86
  