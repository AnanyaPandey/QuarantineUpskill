## Linear Discreminant Analysis. 
# LDA: Dimension Reduction by linear transformation
# LDA reduces the dimension by increasing the seperability amonb the categories of the data
# It ranks the highest seperable axes and projects the data on this axes to reduce the dimension.
# Excellent pre processing for classification. PCA is unsupervised and LDA is a supervised technique (depends on dependent variable)
# Reduced data is subjected to logistic regression for the classification 
##

import numpy as np 
import pandas as pd

df <- pd.read.csv('wine.csv')
X = df.iloc(:,:-1).values
y = df.iloc(:,-1).values

from sklearn.model_selection import train_test_split
X_train,x_test,y_train,y_test = train_test_split(X,y,random_state=0, test_size=0.2)

from sklearn.preprocessing import StandardScalar
sc = StandardScalar()
X_train = sc.fit_transform(X_train)
X_test = sc.fit_transform(X_test)

# Data is now ready. 

from sklearn.discreminant_analysis import LinearDiscriminimantAnalysis as ldaa
lda = ldaa(n_components = 2)
X_train = lda.fit_transform(X_train,y_train)
X_test = lda.transform(X_test)


from sklearn.linear_model import LogisticRegresion 
clf = LogisticRegresion(random_state = 0)
clf.fit(X_train,y_train)

from sklearn.metrics import confusion_matrix,accuracy_score
y_pred = clf.predict(X_test)
cm = confusion_matrix(y_test,y_pred)
print("Confusion Matrix: ",cm)
print("Accuracy of Model : ",accuracy_score(y_test,y_pred))






