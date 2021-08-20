#TASK 1: predict score of student on basis of study hours
#Presented by SURBHI KUMARI
#First we import csv file in R


xy<- read.csv(file.choose())
print(xy)
install.packages("dplyr")
library("dplyr)
head(xy)
tail(xy)
summary(xy)
count(xy)
view(xy)
nrow(xy)
colnames(xy)
#visualize regression graphically
hours<- xy$Hours
scores<- xy$Scores
require (graphics)
plot(hours,scores)
plot(hours,scores, pch=16, cex+1, col= "green", main= 'study hours vs scores' , xlab= 'hours', ylab= 'scores')
relation<- lm(scores~hours)
summary(relation)
attributes(relation)
coef(relation)
abline(relation, col= 'blue')
#predict score when student study for 9.25 hours
df<- data.frame(hours=9.25)
result<- predict(relation,df)
print(result)
