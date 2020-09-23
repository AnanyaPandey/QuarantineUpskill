## Kernal PCA
# This is principle component analysis with kernel added in the input. 
# We expect PCA to perform better with kernel. 
# PCAs objective is to find the PCs which explains the highest variations in data.
# 

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
# PCA is an unsupervised learning hence we do not need y_train in dimension reduction.

from sklearn.decomposition import KernelPCA
kpca = KernelPCA(n_components =2, kernel = 'RBF') # Radial Basis Function
X_train = kpca.fit_transform(X_train)
X_test = kpca.fit_transform(X_test)


from sklearn.linear_model import LogisticRegresion 
clf = LogisticRegresion(random_state = 0)
clf.fit(X_train,y_train)

from sklearn.metrics import confusion_matrix,accuracy_score
y_pred = clf.predict(X_test)
cm = confusion_matrix(y_test,y_pred)
print("Confusion Matrix: ",cm)
print("Accuracy of Model : ",accuracy_score(y_test,y_pred))
