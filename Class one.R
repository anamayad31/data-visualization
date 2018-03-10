getwd()
#integer
students <-9
#double
students_avg_Work_exp <- 7.5
#typeof
typeof(students_avg_Work_exp)
?type
# Task 1 Class one
x1 <- c(2.5,1.4,6.3,4.6,9.0)
print(x1)
mode(x1)
class(x1)
length(x1)

x2 <- c(TRUE,FALSE,TRUE,FALSE,FALSE)
x3 <- c("DataMining","Statistics","Analytics","Projects","MachineLearning")
print(x3)
mode (x2)
class(x2)
length(x2)
mode(x3)
class(x3)
length(x3)


#factor concept

credit_rating = c(1,2,2,3,1,2,3,3,1,2,3,3,1,1,2,2,3,1,2,3,3,1,2,3,3,1,1,2,2,3,1,2,3,3,1,2,3,3,1)

credit_rating_factor = factor(credit_rating)
credit_rating_factor

performance_grading = c(1,2,3,4,5,1,1,1,1,3,3,3,3,2,2,2,4,4,2,1,1,3,3,5,4,4,3,3,3,1,5,2,1,4,1,3)
performance_grading_factor = factor(performance_grading)
performance_grading_factor


#dataframe concept

x <- data.frame(x1, x2, x3)
class (x)
x
