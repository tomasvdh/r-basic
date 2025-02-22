# Funciones y Combinatoria
    2*(3+5/2)
    2*((3+5)/2)
    2/3+5
    2%/%3+5
    2%%3
    2^3*5
    #(2^3)*5
    2^-4
    
    727%/%7
    727%%7
    # D(Dividendo) = d(divisor) * q(cociente) + r(resto)
    # r = D - d * q
    # q = D %/% d
    # x = D %% d
    
    727 - 103*7
    
    pi
    2*pi
    3^pi
    pi^2
    
    Inf
    -Inf
    
    NA
    NaN
    
    5/0
    0/0
    
    2^50 # = 1.1259e+15 = 1125900000000000
    2^(-15) # = 3.051758e-05 = 0.00003051758
    c(2^30,2^(-15),1,2,3/2)
    
    sqrt(25)
    exp(1)
    log(pi)
    abs(-10)
    log(exp(1))
    log(1000,10)
    log10(1000)
    factorial(5)
    factorial(0)
    choose(5,        3)
    
    

# Funciones Trigonometricas
    cos(60*pi/180)
    sin(60*pi/180)
    ?sin
  
    # sinpi(1/2) = sin(pi/2)
    
    tan(pi) # -1.224647e-16 ~ 0
    tan(pi/2) # 1.633124e+16 ~ Inf
    
    asin(0.8660254) #Arc Sin en radianes
    asin(0.8660254)*180/pi
    
    asin(5) #Arc sin x en [-1,1]
    acos(-8)

    
    
# Redondeo y decimales en R
    print(sqrt(10),10)
    round(sqrt(10),3)
    floor(sqrt(10))
    floor(-3.5)
    ceiling(sqrt(10))
    ceiling(-3.5)
    trunc(sqrt(10))
    trunc(-3.25)

    2^50
    print(2^50,15)
    print(2^50,2)
    print(pi, 17)    
    
    round(sqrt(2), 4)^2
    
    round(1.25,1)    
    round(1.35,1)
    round(sqrt(2),1)
    round(sqrt(2),0)
    round(sqrt(2))
    # ?round
    
    round(digits = 5, sqrt(2))

    
    
# Crear variables en R
    x = (pi^2)/2
    x

    y <- cos(pi/4)    
    y    
    
    sin(pi/4) + cos(pi/4) -> z
    z    

    edad <- 30
    nombre = "Juan Gabriel"
    
    Hola = 5
    HOLA = 1
    
    pi.4 = 4*pi
    pi.4
    
    x = 2
    x = x^2
    x = x^2
    x = sqrt(x)   
    x

    
    
# Crear funciones en R
    miVariable = 4
    doble = function(x){2*x}
    doble(miVariable)

    cuadrado = function(x){x^2}
    cuadrado(miVariable)
    
    # Función f(x) = x^3 - (3^x) * sin(x)
    f = function(x){x^3 - (3^x) * sin(x)}
    f(4) # 4^3 - (3^4) * sin(4)   
    f(5)    
    f(pi/2)
    
    suma1 = function(t){t+1}
    suma1(6)
    suma1(-5)
    
    product <- function(x, y){
      x*y
    }
    product(5,7)    
    
    g <- function(x,y,z){
      exp(x^2 + y^2) * sin(z)
    }
    g(1,2,3)    
    g(1,-1,pi)    
    
    suma5 <- function(numero){
      numero = suma1(numero);
      numero = suma1(numero);
      numero = suma1(numero);
      numero = suma1(numero);
      suma1(numero)
    }
    suma5(3)

    
    # Listar los elementos. Funciones y variables
    ls()    
    
    # Remover una funcion o variable
    rm(product)    
    
    # Remover todas las funciones o variables
    rm(list = ls())

    
    
# Numeros complejos
    class(3+2i)
    
    (3+2i)*5    
    (3+2i)*(-1+3i)
    (3+2i)/(-1+3i)
    
    # pi + sqrt(2)i
    complex(real = pi, imaginary = sqrt(2)) -> z1
    z1

    # sqrt(-5)
    sqrt(as.complex(-5))
    
    # La raiz cuadrada devuelve, de las dos soluciones la de
    # Re(z)>0, para obtener la otra, hay que multiplicar por -1
    sqrt(3+2i) # z^2 = 3+2i
    exp(3+2i)    
    sin(3+2i)    
    cos(3+2i)
    
    #M�dulo = sqrt(Re(z)^2 + Im(z)^2)
    Mod(z1)
    
    #Argumento = arctan(Im(z)/Re(z))
    # = arccos(Re(z)/Mod(z))
    # = arcsin(Im(z)/Mod(z))
    # va desde (-pi,pi]
    Arg(-1+0i)
    Arg(-1+-2i)
    
    #Conjugado = Re(z) - Im(z)i
    Conj(z1)
    
    #Parte real y parte imaginaria
    Re(z1)
    Im(z1)
    
    ### z = Mod(z) * (cos(Arg(z))+sin(Arg(z)))
    complex(modulus = 2, argument = pi/2) -> z2
    Mod(z2)
    Arg(z2)
    
    