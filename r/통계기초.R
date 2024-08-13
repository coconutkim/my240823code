#상관과 회귀

df <-read.csv(choose.files(),header = TRUE)
              
cor(df$adv,df$sales)

?lm

linear_model1 <- lm(sales~adv,df)

linear_model1

summary(linear_model1)

