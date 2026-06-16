#Program 3
#Kondisi 1
a <- 1
b <- 2
c <- 1

D <- b^2 - 4*a*c

if (D == 0) {

  x <- -b / (2*a)

  cat("Nilai x kembar =", round(x, 3), "\n")

} else if (D > 0) {

  x1 <- (-b + sqrt(D)) / (2*a)
  x2 <- (-b - sqrt(D)) / (2*a)

  cat("Akar real:\n")
  cat("x1 =", round(x1, 3), "\n")
  cat("x2 =", round(x2, 3), "\n")

} else {

  cat("Persamaan hanya memiliki akar imajiner\n")

}

#Kondisi 2
a <- 1
b <- -5
c <- 6

D <- b^2 - 4*a*c

if (D == 0) {
  
  x <- -b / (2*a)
  cat("Nilai x kembar =", round(x, 3), "\n")
  
} else if (D > 0) {
  
  x1 <- (-b + sqrt(D)) / (2*a)
  x2 <- (-b - sqrt(D)) / (2*a)
  
  cat("Akar real:\n")
  cat("x1 =", round(x1, 3), "\n")
  cat("x2 =", round(x2, 3), "\n")
  
} else {
  
  cat("Persamaan hanya memiliki akar imajiner\n")
  
}

#Kondisi 3
a <- 1
b <- 2
c <- 5

D <- b^2 - 4*a*c

if (D == 0) {
  
  x <- -b / (2*a)
  
  cat("Nilai x kembar =", round(x, 3), "\n")
  
} else if (D > 0) {
  
  x1 <- (-b + sqrt(D)) / (2*a)
  x2 <- (-b - sqrt(D)) / (2*a)
  
  cat("Akar real:\n")
  cat("x1 =", round(x1, 3), "\n")
  cat("x2 =", round(x2, 3), "\n")
  
} else {
  
  cat("Persamaan hanya memiliki akar imajiner\n")
  
}