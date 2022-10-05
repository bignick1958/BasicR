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

library(tidyverse)

alluvia <- data %>%
  group_by(name) %>%
  summarize(x = seq(1, 2, 0.01),
            val = pnorm(x, 1.5, 0.15) * diff(val) + first(val))

ggplot(data,                        
       aes(x = as.numeric(factor(group)),
           y = val,
           fill = name)) +
  geom_bar(stat = "identity",
           position = "stack", width = .1) +
  geom_area(data = alluvia, aes(x = x), position = "stack", alpha = 0.5) +
  scale_x_continuous(breaks = 1:2, labels = levels(factor(data$group)),
                     name = "Group", expand = c(0.25, 0.25)) +
  scale_fill_brewer(palette = "Set2") +
  theme_light(base_size = 20)