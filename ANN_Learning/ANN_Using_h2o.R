df <- read.csv("filename.csv")
df<- df[:,3:]

# Taking care of missing data, Replace missing with Average (Mean)
df$Age <- ifelse(is.na(df$Age), 
	ave(df$Age, FUN = function(x) mean(x na.rm = TRUE )),
	df$Age)

df$Salary <- ifelse(is.na(df$Salary), 
	ave(df$Salary, FUN = function(x) mean(x na.rm = TRUE )),
	df$Salary)

# Encoding the Categorical Variable 

df$Geography <- as.numeric(factor(df$Geography,
	levels = c()'France','Spain','Germany'),
	labels=c(1,2,3)))

df$Gender <- as.numeric(factor(df$Gender,
	levels = c('Male','Female'),
	labels=c(1,0)))

library(caTools)
set.seed(123)
split = sample.split(df$Exited, SplitRation = 0.8 )

TrainingData = subset(df,split=TRUE)
TestData = subset(df,split=FALSE)


# Feature Scaling , Omitting first 3 Categorical Ones.

TrainingData[-11] = scale(TrainingData[-11])
TestData[-11]= scale(TestData[-11])


# Creating the ANN Model, We have two Hidden layers of 6 units each
install.packages('h2o')
library(h2o)

h2o.init(nthreads = -1)
classifier = h2o.deeplearning(y = 'Exited',
	training_frame = as.h2o(TrainingData),
	activation = 'Rectifier',
	hidden = c(6,6),
	epochs = 100,
	train_samples_per_iteration = -2)

# with H2O package computing is done from the h20 server and it helps do the math faster and convenience.

Predicted_probabilities = h2o.predict(classifier, newdata = as.h2o(TestData[-11]))
y_pred = ifelse(Predicted_probabilities > 0.5, 1, 0)
y_pred = as.vector(y_pred)

# confusion Matrix 
cm = table(TestData[,11],y_pred)
print(cm)

h2o.shutdown()



