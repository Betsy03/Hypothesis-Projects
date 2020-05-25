#Business Problem:Is there any signifiance difference in the diameter of the cutlet in unit A and unit B.
#H0=mean of unit A and unit B is equal
#HA=mean of unit A and unit B is unequal


cutlet<-read.csv("A:/Data Science/assignments/Hypothesis/Cutlets.csv")
View(cutlet)
attach(cutlet)
summary(cutlet)
str(cutlet)

#Normality Check
shapiro.test(cutlet$Unit.A)
#p value is .32 which is more than .05 hence Unit A has normal distributed.
shapiro.test(cutlet$Unit.B)
#p value is .52 which is more than .05 hence Unit A has normal distributed.
#External conditions are not same.

var.test(cutlet$Unit.A,cutlet$Unit.B)#to check if variance is equal
#p .316>.05 .Hence variance is equal

t.test(Unit.A,Unit.B,alternative = "two.sided",conf.level = 0.95,correct=TRUE)
#Findings:
#p value is high(.4723>.05) so we accept null hypothesis where diameter of Unit A and Unit B is equal
