# Wyklad 2 ze Statystyki ####





# przyklad 1 ####
# mozna sie odwolywac do zmiennych z rodzina bazposrednio bez podawania rodzina
attach(rodzina)
Liczebnosc <- table(wynik)
Liczebnosc

# wylicznie procentu wystepowania kazdej wartosci  
Procent <- prop.table(Liczebnosc) * 100
Procent

Ocena <- cbind(Liczebnosc, Procent)
Ocena

Text <- c('bardzo dobra', 'przecietna', 'zla', 'fatalna')
rownames(Ocena) <- Text

# ggplot2 - zaawansowany pakage do wykresów
# nizej korzystamy z graphics

barplot(Procent)
?barplot

barplot(Procent,col=1:4)
barplot(Procent,col=1:4, ylab="%")
barplot(Procent,col=1:4, ylab="%", legend.text=Text)
barplot(Procent,col=1:4, ylab="%", legend.text=Text, names.arg=NA)







# przyklad 2 ####
Liczebnosc <- table(Wynik, Plec)
Liczebnosc

Procent <- prop.table(Liczebnosc,2)*100
Procent

rownames(Procent) <- Text
Procent

colnames(procent) <- c('Chlopcy', 'Dziewczeta')
Procent

barplot(Procent)
barplot(Procent, besides=T)
barplot(Procent, besides=T, ylab='%')
barplot(Procent, besides=T, ylab='%', col=1:4)
barplot(Procent, besides=T, ylab='%', col=1:4, legend.text, args.legend=list(x='topright'))




# przyklad 3 ####

attach(dane)
Liczebnosc <- table(mass)
# liczebnsc róznych wartosci jest zbyt duza zeby dobrze 
min(mass)
max(mass)

# dzielenie masy na przedzialy od 10 do 30, od 30 do 50, od 50 do 70
Liczebnsc <- table(cut(mass,c(10,30,50,70)))
Liczebnosc

# funkcja, która tworzy wykres i automatycznie dzieli wartosci na przedzialy.
h <- hist(mass, plot=F)
h

Liczebnosc <- table(cut(mass, h$breaks))
Procent <- prop.table(Liczebnosc)*100
BMI <- cbind(Liczebnosc, Procent)
BMI







# przyklad 4 ####

hist(mass, main="")
g <- ggplot(data=dane)
g <- g+geom_histogram(aes(x=mass),color='grey30', fill="white", bindwidth=5)
g

g <- g+labs(x='BMI', y='liczebnsc')






# przyklad 5 ####

summary(mass)
mean(mass)
median(mass)
sd(mass)
v = sd(mass)/mean(mass)*100
