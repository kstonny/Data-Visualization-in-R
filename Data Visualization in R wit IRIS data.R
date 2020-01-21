setwd("E:\Rdata")
getwd()

ir <- iris

str(ir)

#plotting a graph
#graph is using two continous variable so its a bivariate graph

plot(x=ir$Petal.Width,y=ir$Petal.Length) #its seems similar to linear graph

#to add lable on x and y axis
#where main represent the heading n Xlab and y lab is labeling of the repective axis
plot(x=ir$Petal.Width,y=ir$Petal.Length,main = c("petal lenght vs petal width"),xlab =c("petal width"),ylab = "petal length") 

#adding colour to data points 
plot(x=ir$Petal.Width,y=ir$Petal.Length,main = c("petal lenght vs petal width"),xlab =c("petal width"),ylab = "petal length",col="blue") 

#canging shape of representing data point using pch command and pch=1 2 3 are diffent shape in it 
plot(x=ir$Petal.Width,y=ir$Petal.Length,main = c("petal lenght v s petal width"),xlab =c("petal width"),ylab = "petal length",col="blue",pch=2) 

#lwd is line width of data point that is bold or thin we should take thin lwd for clear view in large data set
plot(x=ir$Petal.Width,y=ir$Petal.Length,main = c("petal lenght v s petal width"),xlab =c("petal width"),ylab = "petal length",col="red",pch=2,lwd=-2) 

# to see realtion petal len and wdth for perticular species that is factor variable # condition in bivariate variable
plot(x=ir$Petal.Width,y=ir$Petal.Length,main = c("petal lenght vs petal width"),xlab =c("petal width"),ylab = "petal length",col=ir$Species) 

#to see different shape in species variable #as.numeric is used becase pch take only numeric value that is 1 2 3
plot(x=ir$Petal.Width,y=ir$Petal.Length,main = c("petal lenght vs petal width"),xlab =c("petal width"),ylab = "petal length",col="red", pch=as.numeric(ir$Species)) 

# another way of diffentiating it only represent size of data point cex parameter
plot(x=ir$Petal.Width,y=ir$Petal.Length,main = c("petal lenght vs petal width"),xlab =c("petal width"),ylab = "petal length",col=ir$Species,cex=as.numeric(ir$Species)) 

#addition of legend , legend command is used  like labling the data point
plot(x=ir$Petal.Width,y=ir$Petal.Length,main = c("petal lenght vs petal width"),xlab =c("petal width"),ylab = "petal length",col=ir$Species,cex=as.numeric(ir$Species)) 
legend(0.2,7,c("Setosa","versicolor","verginica"),pch = 1:3) #0.2 and 7 is the placing of data point or legend labelling

########################

#Studing univeriate visualy analyze
#box plot provide median of data  and histrogram
boxplot(ir$Petal.Length)

#since line is higher then middle that is it is skewed # mean is lesss tha median in this 
#lets tale summary
summary(ir$Petal.Length)

boxplot(ir$Sepal.Width)
#mean>meadian positivly skewed with outlier
summary(ir$Sepal.Width)

#boxplot more specifically
boxplot(ir$Petal.Length,col="red",main="Distribution of petal length")

#study of sepal width across the three species
plot(x=ir$Species,y=ir$Sepal.Width,xlab = "species",main = "sepal across species",col="blue")
#verginica is normal dist

#another graphical reprentation is histrogram good for small set of data for univeriate analysis

hist(ir$Sepal.Width,col="orange")
summary(ir$Sepal.Width)
# nearly a normal distribution

#labelling
hist(ir$Sepal.Width,col="orange",labels = TRUE)

#to look on the density of plot
hist(ir$Sepal.Width,col="orange",freq = FALSE)

#to look on the density around each bar
hist(ir$Sepal.Width,col="orange",freq = FALSE,labels = TRUE)

#to connect each point in plot we use line fn known as trend line
lines(density(ir$Sepal.Width))

#more than one plot in single plotting window with par function
par(mfrow=c(1,2))#first element in row and two in column
#now define two code
plot(x=ir$Species,y=ir$Sepal.Width,xlab="species",main="Speal width accross with species",col="red")

plot(x=ir$Species,y=ir$Sepal.Length,xlab="species",main="Speal length accross with species",col="red")

dev.off() #to clear the box plot window
