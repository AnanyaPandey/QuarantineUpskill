print("Hello World")
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

#df = {'a':[1,2,3,4],'b':[1,2,3,4]}
df2 = {'a':np.arange(100),'b':np.arange(100)}
df = pd.DataFrame(df2)
titanic = pd.read_csv("E:/cloud/titanic_train.csv")
#print(titanic.head())
titanic.Fare.plot()
plt.show()
