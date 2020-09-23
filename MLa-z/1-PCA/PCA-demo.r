

# PCA in R 

df <- read.csv("filename.csv")
df <- df[,3:5]


library(caTools)
set.seed(123)
split = sample.split(df$Purchased, SplitRatio = 0.75)
traindata = subset(df,split=TRUE)
testdata  = subset(df,split=FALSE)

# Feature Scaling, All features except the 14th
traindata[,-14] = scale(traindata[,-14])
testdata[,-14] = scale(testdata[,-14])

# Apply PCA 
install.packages("Caret")
install.packages("e1071")

library(Caret)
library(e1071)

# Here we can specify either variance (threshold) or components
# Several Techniques of dimensionality reduction can be used here

pca = preProcess(x= traindata[,-14], method = "pca", pcaComp =2)
traindata = predict(pca,traindata)
testdata = predict(pca,testdata)
# Re Arrangint he columns of training data 2 and 3 Columns are PC1 and PC2
traindata = traindata[c(2,3,1)]
testdata = testdata[c(2,3,1)]

# applying the logistic regression
# We can use any classification in place of logistic regression

classifier = glm(formula = Customer_Segment ~ ., family = Binomial, data=traindata)
pred_prob = predict(classifier, type = "response", newdata=testdata[-3])
y_pred = ifelse(pred_prob > 0.5,1,0)

cm = table(testdata[,3],y_pred)



