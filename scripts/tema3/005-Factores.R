
  nombres = c("Juan", "Antonio", "Ricardo", "Juan", "Juan", "Maria", "Maria")
  nombres # = "Juan" "Antonio" "Ricardo" "Juan" "Juan" "Maria" "Maria"
  nombres.factor = factor(nombres)
  nombres.factor # = Juan Antonio Ricardo Juan Juan Maria Maria  
                 # Levels: Antonio Juan Maria Ricardo
  
  gender = c("M", "H", "H", "M", "M", "M", "M", "H", "H")
  gender.fact = factor(gender)
  gender.fact # = M H H M M M M H H
              # Levels: H M
  gender.fact2 = as.factor(gender)
  gender.fact2 # = M H H M M M M H H
               # Levels: H M
  gender.fact3 = factor(gender, levels = c("H", "M", "B"))
  gender.fact3 # = M H H M M M M H H
               # Levels: H M B
  gender.fact4 = factor(gender, levels =  c("H", "M", "B"), 
                        labels = c("Hombre", "Mujer", "Hermafrodita"))
  gender.fact4 # = Mujer Hombre Hombre Mujer Mujer Mujer Mujer Hombre Hombre
               # Levels: Hombre Mujer Hermafrodita
  
  levels(gender.fact) # = "H" "M"
  levels(gender.fact4) # = "Hombre" "Mujer" "Hermafrodita"
  levels(gender.fact4) = c("Masculino", "Femenino", "Híbrido")
  gender.fact4 # = Femenino Masculino Masculino Femenino Femenino Femenino 
               # Femenino Masculino Masculino
               # Levels: Masculino Femenino Híbrido
  
  notas = c(1,3,4,2,3,4,2,1,3,4,2,2,2)
  notas.factor = factor(notas)  
  notas.factor # = 1 3 4 2 3 4 2 1 3 4 2 2 2
               # Levels: 1 2 3 4
  levels(notas.factor) # = "1" "2" "3" "4"
  levels(notas.factor) = c("Suspendido", "Suficiente", "Notable", "Excelente")
  notas.factor # = Suspendido Notable Excelente Suficiente Notable Excelente 
               # Suficiente Suspendido Notable Excelente Suficiente Suficiente
               # Suficiente
               # Levels: Suspendido Suficiente Notable Excelente
  
  levels(notas.factor) = c("Suspendido", "Aprobado", "Aprobado", "Aprobado")
  notas.factor # = Suspendido Aprobado Aprobado Aprobado Aprobado Aprobado  
               # Aprobado Suspendido Aprobado Aprobado Aprobado Aprobado  
               # Aprobado  
               # Levels: Suspendido Aprobado
  
  notas
  ordered(notas, labels = c("Sus", "Suf", "Not", "Exc")) 
      # = Sus Not Exc Suf Not Exc Suf Sus Not Exc Suf Suf Suf
      # Levels: Sus < Suf < Not < Exc
  