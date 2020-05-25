Faltoons<-read.csv("A:/Data Science/assignments/Hypothesis/Faltoons.csv",header = TRUE)
View(Faltoons)
attach(Faltoons)
summary(Faltoons)
str(Faltoons)

#H0=Mean of male and female is same for all days
#Ha=Mean of male and female differs

#y=Day of the weekdays
#x1 and x2=Male and Female
table(Faltoons$Weekdays)
table(Faltoons$Weekend)
prop.test(x=c(113,167),n=c(280,280),conf.level = 0.95,correct = FALSE,alternative = "two.sided")
# p value 6.261e-05< 0.05 so accepting alternative hypothesis

prop.test(x=c(113,167),n=c(280,280),conf.level = 0.95,correct = FALSE,alternative = "greater")
# Ha -> Proportions of Males > Proportions of Female
# Ho -> Proportions of Female > Proportions of Male
# p-value = 1 >0.05 accept null hypothesis 
# so proportion of Female > proportion of Male