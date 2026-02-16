library(tidyverse)

data <- read.csv('iris_flower')
data <- iris_flower

# Structure of dataset
head(data) #first rows
str(data) #structure
summary(data) #summary of dataset


# Missing values
sum(is.na(data)) 
colSums(is.na(data)) #Column wise 


# Duplicate Values
sum(duplicated(data)) 


# Filling missing values
data$petal_width_cm[is.na(data$petal_width_cm)] <- median(data$petal_width_cm, na.rm = TRUE)

data


#save cleand csv file
write.csv(data,"iris_flower_cleaned.csv", row.names = FALSE)

