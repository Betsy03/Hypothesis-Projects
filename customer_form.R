
#h0=Defect error is equal for all the centers
#ha=Defect error varies with centers


customer_form<-read.csv("A:/Data Science/assignments/Hypothesis/Costomer+OrderForm.csv",header = TRUE)
View(customer_form)
attach(customer_form)
summary(customer_form)
str(customer_form)
table(customer_form$Phillippines)
x<-data.frame(Country=rep('Phillippines',times=300))
x2<-data.frame(Country=rep('Indonesia',times=300))
x3<-data.frame(Country=rep('Malta',times=300))
x4<-data.frame(Country=rep('India',times=300))
x$values<-customer_form$Phillippines
x2$values<-customer_form$Indonesia
x3$values<-customer_form$Malta
x4$values<-customer_form$India
data<-rbind(x,x2,x3,x4)
table(data$Country,data$values)
#Chisquare test
chisq.test(table(data$Country,data$values))

#p values .277>0.05 hence accept null hypothesis.#h0=Defect error is equal for all the centers

