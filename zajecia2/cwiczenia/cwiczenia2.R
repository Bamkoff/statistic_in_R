# zadanie 1 ####

pierwiastek <- function(x,npar=TRUE,print=TRUE)
{
  result <- sqrt(x)
  return(result)
}

# stworzenie listy
moja_lista <- list(c('Bartosz', 'Fabisiak'), 3.14, sqrt, seq(0.02,1,by=0.02))

#usuniecie 1 i 3 elementu
moja_lista[1] <- NULL
moja_lista[2] <- NULL

# obliczenie funkcji gamma dla elemetów na liscie
(list(gamma(moja_lista[[1]]), gamma(moja_lista[[2]])))
lapply(moja_lista, gamma)



# zadanie 2 ####
# zaladowac package Matrix
(x <- matrix(c(1,2,1,5,0,2,3,5,1),nrow = 3, ncol = 3))
# rzad macierzy
rankMatrix(x)
# wyznacznik macierzy
det(x)
# wartosci wlasne i wektory wlasne
eigen(x)
# sumowanie wiersza
rowSums(x)
# sumowanie kolumny
colSums(x)
# srednia wartosc w wierszu
rowMeans(x)
# srednia wartosc w kolumnie
colMeans(x)
# odwrotnosc macierzy
x%*%solve(x)

# zadanie 3 ####
# wektor pierwszych 100 liczb naturalnych podniesionych do kwadratu
wek <- c((1:100)^2)
table(wek%%10)

# zadanie 4 ####
# tabliczka mnozenia dla liczb mniejszych od 6
outer(1:5,1:5, FUN = function(x, y) paste(x, "*", y, "=", x*y))

# zadanie 5 ####
dane1 <- read.csv("~/repo/statistic_in_R/zajecia2/cwiczenia/dane1.csv", sep=";")
attach(dane1)
dane1[seq(2,nrow(dane1),by = 2),]
dane1[dane1$Wezly.chlonne == 1 & dane1$Wiek>50,]

# zadanie 6 ####
ramka <- data.frame(
  c("Styczen", "Luty", "Marzec", "Kwiecien", "Maj", "Czerwiec", "Lipiec", "Sierpien", "Wrzesien", "Pazdziernik", "Listopad", "Grudzien"),
  NY_F = c(32,33,41,52,62,72,77,75,68,58,47,35)
)

ramka$NY_c <- (ramka$NY_F-32) * 5/9
colnames(ramka) <- c("", "NY_Fahrenheit", "NY_Celsiusz")
ramka
ramka$NY_Fahrenheit <- NULL 
save(ramka, file="NY_temp.RData")