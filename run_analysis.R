library(dplyr)
library(tibble)
library(readr)

#Tidy train data
#Read training labels and data 
y_train <- read_table("./UCI HAR Dataset/train/y_train.txt",col_names = FALSE, col_types = "c")
x_train <- read_table("./UCI HAR Dataset/train/X_train.txt", col_names = FALSE)

        #Change labels for respective names, also change column name
        y_train$X1 <- gsub("1","walking",y_train$X1) 
        y_train$X1 <- gsub("2","walking upstairs",y_train$X1) 
        y_train$X1 <- gsub("3","walking downstairs",y_train$X1) 
        y_train$X1 <- gsub("4","sitting",y_train$X1)
        y_train$X1 <- gsub("5","standing",y_train$X1)
        y_train$X1 <- gsub("6","laying",y_train$X1) 

        y_train <- rename(y_train, activity = X1)

#Read features data, so we can get a number vector to define which columns 
#we need to subset
features <- read_table("./UCI HAR Dataset/features.txt", col_names = FALSE)
        
        columns_means <- grep("mean()",features$X1)
        columns_std <- grep("std()", features$X1)
        columns_wished <- c(columns_means, columns_std)
 
#Get the name of every variable       
        mean_strings <- grep("mean()", features$X1, value = TRUE)
        mean_split <- strsplit(mean_strings, " ")
        
        std_strings <- grep("std()", features$X1, value = TRUE)
        std_split <- strsplit(std_strings, " ")
        
        secondElement <- function(x){x[2]}
                mean_variable.names <- sapply(mean_split, secondElement)
                std_variable.names <- sapply(std_split, secondElement)
                all_variable.names <- c(mean_variable.names,std_variable.names)
        
                
#Subset columns for training data
x_train <- x_train[,columns_wished]

#Set column names 
x_train <- x_train %>% rename_at(vars(grep("X",names(.))), ~all_variable.names)

#Read training subject data, this will be the ID or key column
subject_train <- read_table("./UCI HAR Dataset/train/subject_train.txt", col_names = FALSE)

        subject_train <- rename(subject_train, subject = X1)

#Bind the training data into one column
Data_train_NoSubject <- cbind(y_train,x_train)


#Tidy test data
y_test <- read_table("./UCI HAR Dataset/test/y_test.txt",col_names = FALSE, col_types = "c")
x_test <- read_table("./UCI HAR Dataset/test/X_test.txt", col_names = FALSE)

        #Change labels for respective names, also change column name
        y_test$X1 <- gsub("1","walking",y_test$X1) 
        y_test$X1 <- gsub("2","walking upstairs",y_test$X1) 
        y_test$X1 <- gsub("3","walking downstairs",y_test$X1) 
        y_test$X1 <- gsub("4","sitting",y_test$X1)
        y_test$X1 <- gsub("5","standing",y_test$X1)
        y_test$X1 <- gsub("6","laying",y_test$X1) 
        
        y_test <- rename(y_test, activity = X1)
        
#Subset columns for testing data    
x_test <- x_test[,columns_wished]

#Set column names
x_test <- x_test %>% rename_at(vars(grep("X",names(.))), ~all_variable.names)

#Read testing subject data, this will be the ID or key column
subject_test <- read_table("./UCI HAR Dataset/test/subject_test.txt", col_names = FALSE)

subject_test <- rename(subject_test, subject = X1)

#Bind the testing data into one column
Data_test_NoSubject <- cbind(y_test,x_test)

#Train and test data
Data_train_test_NoSubject <- rbind(Data_train_NoSubject, Data_test_NoSubject)

#Subject data
all_subjects <- rbind(subject_train, subject_test)

#Final merged data
Data_Completed <- cbind(all_subjects,Data_train_test_NoSubject)


#Point 5 left to do

# "From the data set in step 4, creates a second, independent tidy data set with the 
#  average of each variable for each activity and each subject."

# ¿Use tibble factors and levels to arrange clasification? 

#Classifications:
    # frequency or time domains
    # Accelerometer or Gyroscope
    # Gravity or Body acceleration
    # Magnitud, Jerk or Jerk-Magnitude
    # Axial signals

