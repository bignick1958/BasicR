# Numeric (Double)

n1<-15
n1
typeof(n1)  

n2<-1.5
n2
typeof(n2) 

#Charater (string)
c1<-"c"
c1
typeof(c1)

c2<-"строка текста"
c2
typeof(c2)

# Logical (Boolean)
l1<-TRUE
l1
typeof(l1)

l2<-F
l2
typeof(l2)

# Vector - одномерные данные одинакового типа

v1<-c(1,2,3,4,5)
v1
is.vector(v1)

v2<-c("a", "b", "c")
v2
is.vector(v2)

v3<-c(TRUE, FALSE, TRUE, TRUE, FALSE)
v3
is.vector(v3)

# Matrix - два измерения, строки одингаковой длины
# данные однакового типа

m1<- matrix(c(T, T, F, F, T,F), nrow = 2)
m1

m2<- matrix(c("a", "b","c", "d"),
            nrow = 2,
            byrow = T)
m2

# Data frame может сочетать векторы одинаковой длины
# с разными типами данных
# Ближайший аналог - таблицы Excel в R
# поэтому таблицы Excel обычно импортируются в Data frame

vNumeric <- c(1,2,3)
vCharacter<-c("a", "b", "c")
vLogical<- c(T, F, T)
Имя<-vNumeric

df<- as.data.frame(cbind(vNumeric, vCharacter, vLogical))
df # Data frame - разніе типы данных

# List упорядоченная коллекция єлементов и структур любого
# типа и длины. Может в себя включать данные типа list 


o1 <- c(1,2,3)
o2 <- c("a", "b", "c","D")
o3 <- c(T, F, T,T, T,F)

list1<-list(o1,o2,o3)
list1

list2<-list(o1,o2,o3,list1) #list внутриlist
list2

rm(list = ls())

plot(cos, 0, 2*pi)
plot(exp, 1,5)
plot(dnorm, -3,+3)

plot(dnorm, -3,+3,
     col = "#cc0000",
     lwd = 5,
     main = "Стандартное нормальное отклонение",
     xlab = "распределение",
     ylab = "Z-Плотность")

# Вектор Values
values <-c(145,167, 176, 123, 150)
barplot(values,
        col = "#cc0000",
        lwd = 5,)
# 2 Векторa
height <- c(145,167, 176, 123, 150)
weight <- c(51,63,64,40,55)

plot(height, weight)

dev.off()

diamonds <-read.csv("C:/work/DataAnalyst/BasicR/P1_diamonds.csv", header = TRUE)
head(diamonds)

typeof(diamonds)

hist(diamonds$price)

hist(diamonds$price,
     breaks = 150,
     col = "#00ff00")

colors <- table(diamonds$color)
colors
barplot(colors, col = "#cc0000")

# Чистота
clarityD <- table(diamonds$clarity )
clarityD
barplot(clarityD, col = "#f57e13")

# распределение по весу 
hist(diamonds$carat,
     breaks = 100,
     col = "#ffaaff",
     lwd = 3,
     main = "Гистограмма распределения по весу бриллиантов",
     xlab = "вес, карат",
     ylab = "частота")
# Волатильность EURO/USD  
colnames(volatility)<-c("Дата", "Волатильность")
plot (volatility$Дата, volatility$Волатильность,
      xlab = "Дата",
      ylab =  "Объемы торгов, контрактов",
      main = "Волатильность торгов по паре EURO/USD",
      type = "o",
      col = "#00aaff")
legend("bottomleft", "Январь 2022")
         








