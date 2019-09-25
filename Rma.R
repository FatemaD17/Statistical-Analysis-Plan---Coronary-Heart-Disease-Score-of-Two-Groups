#installing required package.

install.packages("dplyr")
library(dplyr)

#Reading the dataset 

a<-read.csv("Sphere.csv")
#Printing summary to know mikssing data

summary(a)

#Selecting the desired data set to work on

a <-a %>%
  select(Arm,Gender,	Smoking.Status,	Previous.MI, Cholesterol,	HDL, SysBP,	Diabetes,	Hypertension)

# Removing Missing value for cetegorical data


a<-a[!is.na(a$Smoking.Status), ]
a<-a[!is.na(a$Diabetes), ]
summary(a)

# Replacing na with mean for continous data

A$Cholesterol[which(is.na(A$Cholesterol))] <- mean(A$Cholesterol, na.rm = TRUE)
A$HDL[which(is.na(A$HDL))] <- mean(A$HDL, na.rm = TRUE)
A$SysBP[which(is.na(A$SysBP))] <- mean(A$SysBP, na.rm = TRUE)

#Box Plot to know the outlier for the continous data

boxplot(A$Cholesterol)
boxplot(A$HDL)
boxplot(A$SysBP)

#Calculating the Avgscore from continouos data.
a$Average<-a$SysBP + a$Cholesterol - a$HDL
print(a)