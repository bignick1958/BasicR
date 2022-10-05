#a = 5
a <- 8
a
b<-3
a*b
c<-a*b

rm(c)

ls()

rm(list = ls())

sqrt(45)
?sqrt

require(stats) # for spline
require(graphics)
xx <- -9:9
plot(xx, sqrt(abs(xx)),  col = "red")
lines(spline(xx, sqrt(abs(xx)), n=101), col = "pink")

my_set<-c(12,34,56,16,-2,58,96) # вектор типа списка или кортежа

my_set*2
sqrt(my_set)
next_set <-my_set^2
next_set
mean(my_set)
sum(my_set)
my_set[2]
my_set>0
my_set[my_set>0]
my_set[my_set>35]
max(my_set)
min(my_set)

which(my_set==-2)
which(my_set==max(my_set))

getwd()
dir.create("C:/work/DataAnalyst/BasicR/lessons")
file.exists("C:/work/DataAnalyst/BasicR/lessons")

#таблицы
colnames(volatility)<-c('Дата', 'Обьем')
View(volatility)
plot(volatility$Дата,volatility$Обьем)
class(volatility$Дата)
volatility$Дата<-strptime(volatility$Дата, format = "%y-%m-%d")
