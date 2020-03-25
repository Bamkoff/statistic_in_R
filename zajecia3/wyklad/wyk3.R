# Wyklad 3 ####

view(Awarie)
hist(Awarie$Czas)
hist(Awarie$Czas, main='')
hist(Awarie$Czas, main='', prob=T)
curve(dexp(x,1/mean(Awarie$Czas)), add=T, col='red')

View(Hamulce)
hist(Hamulce$Wynik, main='', prob=T)
curve(dnorm(x, mean(Hamulce$Wynik), sd(Hamulce$Wynik)), add=T, col='red')

# parametr lambda (ile awari spodziewamy sie w jednostce czasu)
1/mean(Awarie$Czas)

# szacowanie wartosci normalnej
mean(Hamulce$Wynik)

# warjancja
var(Hamulce$Wynik)
