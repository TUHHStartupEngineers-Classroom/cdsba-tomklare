library(rddensity)
library(dagitty)
library(ggdag)

df <- readRDS("./content/01_journal/Causal_Data_Science_Data/shipping.rds")

head(df)

c0 = 30

ggplot(df, aes(x = purchase_amount)) +
  geom_histogram(binwidth = 4, color = "white", boundary = c0, alpha = .6) +
  geom_vline(xintercept = c0, color = "red") +
  xlab("Days since last purchase") +
  ylab("Number of customers") +
  theme(legend.title = element_blank())
