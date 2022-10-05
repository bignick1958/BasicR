df = read.table(text = 
                  "School      Year    Value 
 A           1998    5
 B           1999    10
 C           2000    15
 A           2000    7
 B           2001    15
 C           2002    20", sep = "", header = TRUE)

library(ggplot2)

(p1 <- ggplot(data = df, aes(x = Year, y = Value, colour = School)) +       
    geom_line() + geom_point())

(p2 <- ggplot(data = df, aes(x = factor(Year), y = Value, colour = School)) +       
    geom_line(aes(group = School)) + geom_point())

(p3 <- ggplot(data = df, aes(x = factor(Year), y = Value, colour = School)) +       
    geom_line() + geom_point())


library(ggplot2)
data = rbind(data.frame('val' = c(10, 30, 15), 'name' = c('A', 'B', 'C'), group = 'gr1'), data.frame('val' = c(30, 40, 12), 'name' = c('A', 'B', 'C'), group = 'gr2'))
ggplot(data,                         # Draw barplot with grouping & stacking
       aes(x = group,
           y = val,
           fill = name)) + 
  geom_bar(stat = "identity",
           position = "stack", width = .1)