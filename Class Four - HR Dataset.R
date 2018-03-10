install.packages("e1071")
install.packages("randomForest")
install.packages("party")
install.packages("caret")
install.packages("dummies")

library(dummies)

getwd()

setwd("C:/Users/Shweta Dubey/Desktop/R/Datasets")

getwd()

#HR Dataset data analysis using K -NN data

#Load the data Set or dataframe and assign the dataframe to cancer
HR_data <- read.csv("C:/Users/Shweta Dubey/Desktop/R/Datasets/hr.csv")

#Find the structure of the dataset
str(HR_data) #Structure allows you to identify the number of variables and observations and variable type
dim(HR_data) #Identify the number of variables and the observation

head(HR_data,6) #identify the top 6
tail(HR_data,6) #Identify the bottom 6

#Convert char to num attribute
HR_data$Gender <- as.numeric(HR_data$Gender)
HR_data$Gender

HR_data$Department <- as.numeric(HR_data$Department)
HR_data$EducationField <- as.numeric(HR_data$EducationField)
HR_data$BusinessTravel <- as.numeric(HR_data$BusinessTravel)
HR_data$JobRole <- as.numeric(HR_data$JobRole)
HR_data$MaritalStatus <- as.numeric(HR_data$MaritalStatus)
HR_data$Over18 <- as.numeric(HR_data$Over18)
HR_data$OverTime <- as.numeric(HR_data$OverTime)

str(HR_data)

dim(HR_data)


#Creating Dummy variables

#dummy variables for all the numeric variables for subgrouping

#jobsatisfaction, #overtime, #maritalstatus
#jobrole, #department, #educationalfield
#businesstravel, #gender, #worklifebalance
#trainingtime, #stockoptions, #relationship_satisfaction, #environment_satisfaction
#joblevel #job_involvement #education

ot <- dummy(HR_data$OverTime)
js <- dummy(HR_data$JobSatisfaction)
ms <- dummy(HR_data$MaritalStatus)
jr <- dummy(HR_data$JobRole)
dept <- dummy(HR_data$Department)
ef <- dummy(HR_data$EducationField)
bt <- dummy(HR_data$BusinessTravel)
gender <- dummy(HR_data$Gender)
wlb <- dummy(HR_data$WorkLifeBalance)
ttly <- dummy(HR_data$TrainingTimesLastYear)
so <- dummy(HR_data$StockOptionLevel)
relation_sat <- dummy(HR_data$RelationshipSatisfaction)
env_sat <- dummy(HR_data$EnvironmentSatisfaction)
jl <- dummy(HR_data$JobLevel)
job_involvement <- dummy(HR_data$JobInvolvement)
education <- dummy(HR_data$Education)

#Creating a separate dataframe this is most imp

# select variables, column names or dimensions, measures (nuemrical variables) , features

# excluding certain attributes or removing variables from my analysis using K Means  which we don't want

str(HR_data)

hr <- HR_data[,-c(3,4,5,6,7,8,9,10,11,12,14,15,16,17,18,22,23,26,28,31)]

str(hr)

dim(hr)

#Apply K Means

set.seed(40)
hr_clsuter <- kmeans(hr_data[,] , 2, nstart = 20)
hr_clsuter
hr_clsuter$cluster
table(hr_cluster$cluster, hr_data$Attrition)
# Install packages necessary for various predictive analysis

install.packages("caret")

library(caret)

#Splitting dataset into training and testing purposes 70:30 ratio


View(hr)



#Install packages ggplot2, dplyr, car, 

install.packages("ggplot2")

install.packages("dplyr")

install.packages("car")

library(ggplot2)
library(dplyr)
library(car)

plot(hr)
correlations = corr(hr)
corrplot(correlations)













