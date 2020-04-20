
# REGRESSION USING RANDOM FOREST 
# Import Library
# Get data

from sklearn.ensemble import RandomForestRegressor
regr = RandomForestRegressor(n_estimators =10,)
regr.fit(X,y)
y_pred = regr.predict(X)
# default is 10 trees.


Xgrid = np.arange(min(X),max(X),0.1).reshape(len(X),1)
plt.scatter(X,y,c='red')
plt.plot(Xgird,regr.predict(Xgrid),c='blue')

plt.title("RandomForestRegressor")
plt.xlabel("X Axis")
plt.ylabel("Y Axis")
plt.show()




