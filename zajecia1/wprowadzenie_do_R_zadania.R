# zadanie 2 ####
# uzycie rep do tworzenia wektora
x <- c(rep(TRUE, 3), rep(FALSE, 4), rep(TRUE, 2), rep(FALSE, 5))
as.numeric(x)

# zadanie 3 ####
# uzycie rep(powtarzaj) seq(sekwencja) i rev(odwroc)
p <- c(1:20, rep(0,10), seq(2,40, by=2))
p <- c(p, rev(p))

# zadanie 4 ####
# wybieranie liter z wektora letters od 5 miejsca do 25 miejsca
# co piata litere
letters[seq(5,25,by=5)]

# zadanie 5 ####
# Utwórz wektor liczb naturalnych od 1 do 1000, a nastêpnie zamieñ liczby parzyste na ich odwrotnoœci.

w <- c(1:1000)
w[w%%2==0] <- w[w%%2==0]^(-1)
round(w, digits = 3)

# zadanie 6 ####
# uporzadkowanie elementow wektora malejaco wykorzystujac funkcje order
# order zwraca indeksy a nie faktyczne elemety
v = c(6,3,4,5,2,3)
v[order(v, decreasing = TRUE)]

# zadania 7 ####
# sign do zwracania znaku elementu
# round do zaokraglenia
# floor do wyznaczenia czesci calkowitej a raczej do zaokraglenia w dol.
u = c(-1.876, -1.123, -0.123, 0, 0.123, 1.123, 1.876)
sign(u)
round(u, digits = 2)
floor(u)

# zadanie 8 ####
# roznica przy pierwiastkowaniu funkcja sqrt i podnoszac do potegi 1/2
# 
o <- c(1:100000000)
c = Sys.time()
sqrt(o)
d = Sys.time()
d - c
c = Sys.time()
o^1/2
d = Sys.time()
d - c

# zadanie 9 ####
# wykorzystanie primlist w paczce schoolmath do znalezienia 
# najwiekszej liczby pierwszej mniejszej od 1000
# i ile jest liczb pierwszych wiekszych od 100 a mniejszych od 500
data(primlist)
max(primlist[primlist>900 & primlist<1000])
length(primlist[primlist>100 & primlist<500])
#length(primes(100,500))

# zadanie 10 ####
# Wyznacz wszystkie kombinacje wartosci wektorów 
# (a,b)i (1,2,3)za pomoca funkcji rep() i paste()

paste(rep(c('a', 'b'),3),1:3, sep = "")

# zadanie 11 ####

paste(1:30,c('X','Y','Z'),sep='.')

# zadanie 12 ####
# wygenerowanie 100 odpowiedzi od a do e
# zakodowanie odpowiedzi 
# a i b jako 1
# c i d jako 2
# e jako 3
f = sample(c(letters[1:5]), 100, replace=T)
recode(f, "c('a','b')='1' ; c('c','d')='2' ; c('e')='3'")