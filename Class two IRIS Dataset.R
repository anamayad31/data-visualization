# Install New Packages ggplot2

install.packages("ggplot2")

#installing tidyverse data manipulation package
install.packages("tidyverse")


#Load IRIS Dataset
library(datasets)

#Load IRIS Dataset and look into its structure

structure(iris)

#Load the First Ten and Last Ten Observations
head(iris)

tail(iris)

iris$Species


#load other datasets
?data
data()
#summarize data on the IRIS
summary(iris$Sepal.Length)
summary(iris$Sepal.Width)
summary(iris$Petal.Length)
summary(iris$Petal.Width)

#Plot () function, scatter plot
#sepal length vs sepal width and petal length vs petal width
plot(iris$Sepal.Length,iris$Sepal.Width)
plot(iris$Petal.Length, iris$Petal.Width)

#use ggplot2  Grammar of Graphics
library(ggplot2)
ggplot(iris,aes(Petal.Length,Petal.Width, color = Species))+geom_point()

# Let's apply K-Means, random number generator
# syntax of kmeans(dataset, centers=3, iter.max=10, num.seed=20)

set.seed(20)

iris_clustering <- kmeans(iris[1:4], 3, nstart=20)
iris_clustering

#plot result to compare with the iris data

table(iris_clustering$cluster, iris$Species)





data("Titanic")










































