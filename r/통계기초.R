#상관과 회귀

#단순 선형 회귀

df <-read.csv(choose.files(),header = TRUE)
              
cor(df$adv,df$sales)

?lm

linear_model1 <- lm(sales-adv,df)

linear_model1

summary(linear_model1)




#다중 선형 회귀

x1<-c(2,4,6,8)

x2<-c(0,4,2,3)

y<-c(81,93,91,97)

#+는 x1과 x2 독립적으로 고려해서 y에 미치는 영향 분석
#*는 x1과 x2 이 둘의 교호작용 항인 x1:x2 를 모두 포함
linear_model2 <- lm(y ~ x1+x2)

linear_model2

#교호작용 포함한 모델

linear_model3_1 <- lm(y ~ x1*x2)

linear_model3_1


linear_model3_2 <- lm(y ~ x1+x2+x1:x2)

linear_model3_2


#회귀

perch_length<-c(
  8.4, 13.7, 15.0, 16.2, 17.4, 18.0, 18.7, 19.0, 19.6, 20.0,
   21.0, 21.0, 21.0, 21.3, 22.0, 22.0, 22.0, 22.0, 22.0, 22.5,
   22.5, 22.7, 23.0, 23.5, 24.0, 24.0, 24.6, 25.0, 25.6, 26.5,
   27.3, 27.5, 27.5, 27.5, 28.0, 28.7, 30.0, 32.8, 34.5, 35.0,
   36.5, 36.0, 37.0, 37.0, 39.0, 39.0, 39.0, 40.0, 40.0, 40.0,
   40.0, 42.0, 43.0, 43.0, 43.5, 44.0
)
