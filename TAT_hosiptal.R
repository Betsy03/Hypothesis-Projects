#Business Problem:Is there any difference in TAT of reports on 4 labs
#h0=Mean of TAT in 4 labs is equal
#ha=Mean of TAT in 4 labs is unequal

hoisptal_TAT<-read.csv("A:/Data Science/assignments/Hypothesis/LabTAT.csv")
View(hoisptal_TAT)
attach(hoisptal_TAT)
summary(hoisptal_TAT)
str(hoisptal_TAT)

#Normality test

shapiro.test(hoisptal_TAT$Laboratory.1)
shapiro.test(hoisptal_TAT$Laboratory.2)
shapiro.test(hoisptal_TAT$Laboratory.3)
shapiro.test(hoisptal_TAT$Laboratory.4)
#All the variables are normally distributed.
library(car)
stacked_data1<-stack(hoisptal_TAT)
View(stacked_data1)
#Varaince test
leveneTest(values,ind,data=stacked_data1)
#Equal varaiance as p >0.05
annova_tat<-aov(values~ind,data=stacked_data1)
summary(annova_tat)
#p value 2e-16 <.05 so we reject null hypothesis and accept alternate hypothesis.
#Ha=Mean of TAT in 4 labs is unequal