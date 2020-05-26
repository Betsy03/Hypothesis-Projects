#h0=M/F mean across the regions are equal
#ha=M/F mean across the regions are unequal

buyer_sale<-read.csv("A:/Data Science/assignments/Hypothesis/BuyerRatio.csv",header = TRUE,stringsAsFactors = TRUE)
buyer_sale<-col
View(buyer_sale)
attach(buyer_sale)
summary(buyer_sale)
str(buyer_sale)

#Varaince test
chisq.test(buyer_sale[,2:5])

#As the p value is .66>.05 accepting null hypothesis.Male and Female ratio across the regions are equal
