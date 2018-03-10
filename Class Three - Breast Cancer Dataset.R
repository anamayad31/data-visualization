setwd("C:/Users/Shweta Dubey/Desktop/R/Datasets")
getwd()

#Wisconsin Breast Cancer data analysis using K -NN data

#Load the data Set or dataframe and assign the dataframe to cancer
cancer_data <- read.csv("cancer.txt",stringsAsFactors = FALSE)

#Find the strucutre of the dataset
str(cancer_data)
dim(cancer_data)

#summarize the dataset using summary statistics
summary(cancer_data)

#start preparing for the predective analytics
dim(cancer_data)
names(cancer_data)

#Assign names to attributes

#Attribute Information: (class attribute has been moved to last column)

#  Attribute                     Domain
-- -----------------------------------------
#  1. Sample code number          id number
#2. Clump Thickness                1 - 10
#3. Uniformity of Cell Size        1 - 10
#4. Uniformity of Cell Shape       1 - 10
#5. Marginal Adhesion              1 - 10
#6. Single Epithelial Cell Size    1 - 10
#7. Bare Nuclei                    1 - 10
#8. Bland Chromatin                1 - 10
#9. Normal Nucleoli                1 - 10
#10. Mitoses                       1 - 10
#11. Class:                        (2 for benign, 4 for malignant)

names(cancer_data) <- c("id", "Clump_T", "Cell_Size", "Cell_Shape", "M_A", "Epithelial_cell_Size", "Bare_nuclei", "Brand_Chromatin", "Normal_Nucleoli", "Mitoses", "benign_class")

names(cancer_data)

str(cancer_data)

summary(cancer_data)


#exclude the attributes whic are not needed

cancer_data$id <- NULL
dim(cancer_data)
str(cancer_data)

cancer_data$Bare_nuclei

#findout missing values
is.na(cancer_data$Bare_nuclei)
is.na(cancer_data$Mitoses)




# data cleaning  step 1
str(cancer_data)

#  data transformation for bare nuclei

cancer_data$Bare_nuclei <- as.numeric(cancer_data$Bare_nuclei)
str(cancer_data)


# list rows of data that have missing values, is.na(variable name)
# create new dataset without missing data, mydata[complete.cases(mydata),]
# omit missing data na.omit(mydata) 
# find missing values is.na(my data)

is.na(cancer_data)
# Doing sub setting in R mention the rwo names followed by the column names
# Omitting the missing values from our ananlysis , for that sub setting is used
# Subsetting allows selecting vector elements

cancer_data <- cancer_data[complete.cases(cancer_data),]

str(cancer_data)

na.omit(cancer_data)

names(cancer_data)


# mydata[rows or observations, columns or variables]. This is how subsetting works

#first three values of all the variables
print(newdata <- cancer_data[,1:3])
print(newdata <- cancer_data[ , ])
print(newdata <- cancer_data[1:100,])
head(cancer_data, n=100)
tail(cancer_data, n=100)


#Split data in 70:30 ratio
#Training and Testing

training_data <- cancer_data[1:477,1:9]
test_data <- cancer_data[478:682,1:9]

training_data_outcome <- cancer_data[1:477,10]
test_data_outcome <- cancer_data[478:682,10]


# Applying KNN - K nearest neighbour
# library ()
#knn(train, test, cl, k = 1)
# K means calcuclated as square root of 477 i.e. 21.87  so near odd is 21 (477 is 70% of 682 total variables)
#outcome has to be given only from the training data and not the test data

library(class)
cancer_prediction <- knn(train = training_data,test = test_data,cl = training_data_outcome,k = 21)

#cross tabulation compare against test data actual outcomes 
table(test_data_outcome, cancer_prediction)

#accuracy of a cancer
print (accuracy <- ((380+186)/682))*100

