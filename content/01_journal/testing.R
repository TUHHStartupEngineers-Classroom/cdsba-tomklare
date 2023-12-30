library(tidyverse)
library(dagitty)
library(ggdag)

df <- readRDS("./content/01_journal/Causal_Data_Science_Data/customer_sat.rds")

lm <- lm(satisfaction ~ follow_ups, data = df)
summary(lm_all)

lm_all <- lm(satisfaction ~ follow_ups + subscription, data = df)
summary(lm_all)

# Not conditioning on subscription
data_not_cond <- ggplot(df, aes(x = follow_ups, y = satisfaction)) +
  geom_point(alpha = .8) +
  stat_smooth(method = "lm", se = F)

# Conditioning on education  
data_cond <- ggplot(df, aes(x = follow_ups, y = satisfaction, color = subscription)) +
  geom_point(alpha = .8) +
  stat_smooth(method = "lm", se = F) +
  theme(legend.position = "right")

# Plot both plots
data_not_cond
#data_cond