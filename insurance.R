---
  title: "Medical Charge Predictions"
output: html_document
date: "2022-08-25"
---
  ```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)

# Libraries

``` 
df = `insurance.(1)`

df = read.csv('insurance.csv', header=TRUE)
num_cols <- unlist(lapply(df, is.numeric))  
plot(df[,num_cols])

smoker = as.factor(df$smoker)
sex = as.factor(df$sex)
region = as.factor(df$region)

boxplot(df$charges ~ smoker, main ='Smoker')
boxplot(df$charges ~ sex, main ='sex')
boxplot(df$charges ~ region, main ='region')
model1 = lm(charges ~. , data =df)
summary(model1)

