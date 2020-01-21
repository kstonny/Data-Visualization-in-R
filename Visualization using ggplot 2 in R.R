setwd("E:\\Rdata")
getwd()
 
#gg plot is consist of 
#asthetic mapping (axis,color etc setting)
#gemos(geomatrical mapping) (boxplot rect plot area etc)
#Statical transformation (count density)
#scale and coordinate sys

mk <- read.csv("marketing.csv")

# insalling the package ggplot2
#install.packages("ggplot2")
library(ggplot2)

#understanding the relation between salary and amount

p<-ggplot(mk,aes(x=Salary,y=AmountSpent))#where aes define x n y axis and mk is dataset

p+geom_point()#geometricsl  will point scatter plot

#conditional plot as male n female 
p+geom_point(aes(colour=Gender)) #catagorised by gender
 #his house
p+geom_point(aes(colour=OwnHome))
#his children 
p+geom_point(aes(colour=Children))
#labelling in ggplot
p+geom_point(aes(colour=Gender))+xlab("Salary in $")+ylab("Expenditure in $")

#analysis of univariate
p<-ggplot(mk,aes(x=AmountSpent))
p+geom_histogram()

#gender wise
p+geom_histogram(aes(fill=Gender))

#modify situation n Slpitng the bar in same plot
p+geom_histogram(aes(fill=Gender),position = "dodge")+facet_grid(Gender~.)

#alpha parameter is used for transparency
p+geom_histogram(aes(fill=Gender),alpha=0.3)+facet_grid(Gender~.)

# boxplots
q <- ggplot(mk,aes(y=AmountSpent,x=Gender,fill=Gender))
q+geom_boxplot()


# another way is to produce the density plots
options(scipen=999)
r <- ggplot(mk,aes(x=AmountSpent))
r+geom_density()



# conditional density plot
# i want to know density gender wise 
r+geom_density(aes(fill=Gender))



# improving the plot
r+geom_density(aes(fill=Gender,colour=Gender),alpha=0.6)

# another method fpr univariatye anyze- we produce 2d bivariate plots, 2d heatmaps

# 2d counts
t <- ggplot(mk,aes(x=Salary,y=AmountSpent))
t+geom_bin2d()
