library(tidyverse)

year <- 2000:2009
# *3-6.2
data_divorce <- c(4.97, 4.68, 4.62, 4.45, 4.32, 4.14, 4.2, 4.2, 4.2, 3.1)
data_margarine <- c(8.2, 7, 6.5, 5.3, 5.3, 4, 4.6, 4.5, 4.2, 3.7)/2.8+1.9

data <- data.frame(year, data_divorce, data_margarine)

limits = c(3.96, 5)
limits = c(2, 9)

ggplot(data, aes(x = year)) +
  geom_line(aes(y = data_divorce), color = "red", linetype = "solid", linewidth = 1) +
  geom_line(aes(y = data_margarine), color = "black", linetype = "solid", linewidth = 1) +
  scale_y_continuous(name = "Divorce rate in Maine\nper 1000", sec.axis = sec_axis(~.*2.8-1.9, name = "Per capita consumption of margarine\nlbs")) +
  labs(title = "Divorce rate in Maine \ncorrelates with \nPer capita consumption of margarine", x = "year")