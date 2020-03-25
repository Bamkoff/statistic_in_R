# cwiczenia 3 ####

# zad 1 ####
# Oblicz iloczyn elementów dowolnego wektora x za pomoca petli while, repeat i for (kazdej z osobna).
x <- 1:5
iloczyn <-  1
i <- 1
while(i<=5){
  iloczyn <- iloczyn * x[i]
  i <- i+1
}
iloczyn

iloczyn <- 1
i <- 1

repeat{
  iloczyn <- iloczyn * x[i]
  i <- i+1  
  if(i==6) break
}
iloczyn

iloczyn <- 1
for(i in x) iloczyn <- iloczyn*i
iloczyn

# zad 2 ####
# Ile liczb postaci n po r jest wiekszych od miliona dla 1 <= r <= n <= 100?
ile <-  0
for(i in 1:100)
{
  for (j in 1:i)
  {
    if (choose(i,j)> 1000000) ile <- ile + 1
  }
}

ile

# zad 3 ####
# Napisz funkcje która sprawdza czy wektor jest palindromem
palindrom <- function(x)
{
  y <- rev(x)
  y
  i <- 1
  length(x)
  while(i <= length(x))
  {
    if(y[i] != x[i]) return(FALSE)
    i <- i + 1
  }
  return(TRUE)
}
palindrom(1:5)
x <- c(1,2,3,3,2,1)
palindrom(x)

# zad 4 ####
# Napisac funkcje przeliczajaca stopnie na radiany
st_to_rad <- function(x) pi*x/180
stopnie <- c(0,30,45,60,90)
for(i in stopnie) print(st_to_rad(i))

# i stworzyc ramke danych podajaca sin cos tg ctg dla tych danych


ramka <- data.frame(sin(stopnie), cos(stopnie), tan(stopnie), 1/tan(stopnie))
ramka

# zad 5 ####
# funkcja zwracajaca 3 najwieksze i 3 najmniejsze liczby z wektora
# jak wektor za krótki to zwraca blad "za krótki argument"
x <- c(2, 6, 1, 5, 7, 3, 4)
extreme_3 <- function(x)
{
  if(length(x)<3) stop("za krótki argument")
  y <- x
  z <- x
  y <- y[order(y, decreasing = TRUE)]
  z <- z[order(z)]
  c(z[1:3], y[1:3])
}

extreme_3(x)
extreme_3(c(2,5))
