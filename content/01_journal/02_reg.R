library(tidyverse)

df <- readRDS("content/01_journal/Causal_Data_Science_Data/car_prices.rds")

print(dim(df))
summary(df)
head(df)
glimpse(df)

lm_all <- lm(price ~ ., data = df)
summary(lm_all)

df$seat_heating <- TRUE
print(dim(df))
summary(df)
head(df)
glimpse(df)

lm_all <- lm(price ~ ., data = df)
summary(lm_all)