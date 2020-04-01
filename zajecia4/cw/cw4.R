# cw 4

# zad 1 ####

# 1)
# Zaimportuj dane z pliku ankieta.txt do zmiennej ankieta.
ankieta <- read.delim("~/repo/statistic_in_R/zajecia4/cw/ankieta.txt")
View(ankieta)

# 2)
# Przedstaw rozklad empiryczny zmiennej wynik za pomoca szeregu rozdzielczego.
data.frame(cbind(liczebnosc = table(ankieta$wynik),
                procent = prop.table(table(ankieta$wynik))))

# 3)
# Przedstaw rozklad empiryczny zmiennej wynik tylko dla osob z wyksztalceniem podstawowym za pomoca szeregu rozdzielczego.
tylko_p <- ankieta[ankieta$szkola == "p",]
View(tylko_p)

data.frame(cbind(liczebnosc = table(tylko_p$wynik),
                 procent = prop.table(table(tylko_p$wynik))))

# 4)
# Zilustruj wyniki ankiety za pomoca wykresu slupkowego i kolowego.

barplot(table(ankieta$wynik),
        xlab = "Odpowiedzi", ylab = "Liczebnosc",
        main = "Rozklad empiryczny zmiennej wynik")

barplot(prop.table(table(ankieta$wynik)),
        xlab = "Odpowiedzi", ylab = "Prawdopodobienstwo",
        main = "Rozklad empiryczny zmiennej wynik")

pie(table(ankieta$wynik))

# 5)
tylko_k <- as.data.frame(table(ankieta[ankieta$plec == "k",]$wynik))
# View(tylko_k)
tylko_m <- as.data.frame(table(ankieta[ankieta$plec == "m",]$wynik))
# View(tylko_m)

ramka <- data.frame(
  M <- tylko_m$Freq,
  K <- tylko_k$Freq
)

names(ramka) <- c("M", "K")
rownames(ramka) <- c("a","b","c","d","e")

colours <- c("red", "orange", "blue", "yellow", "green")
barplot(as.matrix(ramka),
        xlab = "Odpowiedzi", ylab = "Liczebnosc",
        main = "Rozklad empiryczny zmiennej wynik",
        col = colours,
        beside = TRUE)

# zad 2 ####
# 1)
# Zaimportuj dane z pliku Centrala.RData.
load("~/repo/statistic_in_R/zajecia4/cw/Centrala.RData")

# 2)
# Przedstaw rozklad empiryczny liczby zgloszec za pomoca szeregu rozdzielczego.
data.frame(cbind(liczebnosc = table(Centrala$Liczba),
                 procent = prop.table(table(Centrala$Liczba))))

# 3)
# Zilustruj liczbe zgloszen za pomoca wykresu slupkowego i kolowego.
barplot(table(Centrala$Liczba),
        xlab = "Odpowiedzi", ylab = "Liczebnosc",
        main = "Rozklad empiryczny zmiennej wynik")

barplot(prop.table(table(Centrala$Liczba)),
        xlab = "Odpowiedzi", ylab = "Prawdopodobienstwo",
        main = "Rozklad empiryczny zmiennej wynik")

pie(table(Centrala$Liczba))

# 4)
# Obliczyc srednia z liczby zgloszen, mediane liczby zgloszen,
# odchylenie standardowe liczby zgloszen i wspolczynnik zmiennosci liczby zgloszen.

# srednia
mean(Centrala$Liczba)
#mediana
median(Centrala$Liczba)
# odchylenie standardowe
sd(Centrala$Liczba)
# wspolczynnik zmiennosci
sd(Centrala$Liczba) / mean(Centrala$Liczba) * 100

# zad 3 ####
wiatr <- data.frame(
srednia <- c(0.9, 6.2, 2.1, 4.1, 7.3, 1.0, 4.6, 6.4, 3.8, 5.0, 2.7, 9.2, 5.9, 7.4, 3.0, 4.9, 8.2, 5.0, 1.2, 10.1, 12.2, 2.8, 5.9, 8.2, 0.5)
)
names(wiatr) <- c("srednia")
View(wiatr)
# 1) 
# Przedstaw rozklad empiryczny badanej zmiennej za pomoca szeregu rozdzielczego.
(rozklad <- hist(wiatr$srednia, plot = FALSE)$breaks)
data.frame(cbind(liczebnosc = table(cut(wiatr$srednia, breaks = rozklad)),
                 procent = prop.table(table(cut(wiatr$srednia, breaks = rozklad)))))
# 2) 
# Zilustruj rozklad empiryczny sredniej szybkosci wiatru za pomoca histogramu i wykresu pudelkowego.

hist(wiatr$srednia, 
    xlab = "Srednia predkosc wiatru", 
    main = "Rozklad empiryczny sredniej predkosci wiatru",
    probability = TRUE, 
    col = "lightgreen")
lines(density(wiatr$srednia), col = "red", lwd = 2)

boxplot(wiatr$srednia, 
        ylab = "Srednia predkosc wiatru", 
        main = "Rozklad empiryczny sredniej predkosci wiatru")

# 4)
# Obliczyc srednia, mediane, odchylenie standardowe, wspolczynnik zmiennosci, wspolczynnik asymetrii 
# i kurtoze sredniej szybkosci wiatru.

mean(wiatr$srednia)
#mediana
median(wiatr$srednia)
# odchylenie standardowe
sd(wiatr$srednia)
# wspolczynnik zmiennosci
sd(wiatr$srednia) / mean(wiatr$srednia) * 100

library(e1071)
# wspolczynnik asymetrii
skewness(wiatr$srednia)
# kurtoza
kurtosis(wiatr$srednia)

# zad 4 ####
wspolczynnik_zmiennosci <- function(x, na.rm = FALSE)
{
  y <- c()
  if(na.rm == TRUE) y <- x[!is.na(x)]
  else y <- x
  if(is.numeric(y)) return(sd(y) / mean(y) * 100)
  else stop("argument nie jest liczbowy")
}



