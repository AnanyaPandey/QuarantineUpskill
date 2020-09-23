#Dimensionality Reduction

Remember in Part 3 - Classification, we worked with datasets composed of only two independent variables. We did for two reasons:

Because we needed two dimensions to visualize better how Machine Learning models worked (by plotting the prediction regions and the prediction boundary for each model).
Because whatever is the original number of our independent variables, we can often end up with two independent variables by applying an appropriate Dimensionality Reduction technique.


There are two types of Dimensionality Reduction techniques:

- Feature Selection
- Feature Extraction


Feature Selection techniques are Backward Elimination, Forward Selection, Bidirectional Elimination, Score Comparison and more. We covered these techniques in Part 2 - Regression.

In this part we will cover the following Feature Extraction techniques:

* Principal Component Analysis (PCA)
* Linear Discriminant Analysis (LDA)
* Kernel PCA
* Quadratic Discriminant Analysis (QDA)


Enjoy Machine Learning!

## Principle Component Analysis 

1. First step is to find the principle components. Number of principle components could be either number of features or number of samples whichever is less. Lets say we have two features and there are twp PCs. PC1 and PC2.
	1. Find the average measurement of Variable 1 and Variable 2 
	2. If we plot this on the plane along with data we can spot this two averages between the observations
	3. Take everything and shift the average to make it origin. Shifting it to origin doesnt affect the relative positions of our data.
	4. Now we draw a line best fit to this modified origined data.
		1. Each data points projects on a random line that passes through the origin.
		2. Now we try to maximise the distance between the origin and the projected points.
		3. Each data point will make a right triangle with this line along with origin. since distance to origin doenst change, and we maximise the distance from origin to projected point, the 3rd side of triangle shrinks.
	5. Each best fitted line is a principle component, we here need two lines: PC1 and PC2.
2. Calculate the Slopes of each PCs. Say Slope of PC1 is 0.24 i.e. 4 units in variable_1 and 1 units in variable_2, which means data is spread out more along the variable_1 and less along variable_2. Thus Principle components are also called as Linear combination of variables. (PC1 and PC2 is an equation of variables) PC = f(variables).
3. Scale this slope of PC1 and PC2 each to make it equal to 1. thus slope becomes this unit vector. Consider for PC1 : now the linear combination becomes 0.97 parts of variable_1 and 0.242 parts of variable_2, this proportion of each variable is called loading scores
4. This unit vector is called Eigen vectors. we have 2 Eigenvectors or Singular Vector.
5. Each PC after PC1 is found by drawing a line parpendicular to the PC1 and passing through origin. 
6. Calculate the Eigen Values : The sum of square of the distnaces from origin to the projected points is called SS(Distnace) : or EigenValues
7. Now keep the projected ponits on PC1 and PC2 and make these PC1 and PC2 the Axis and get rid of the previously rotated axis. (Rotate to make PC1 Horizontal)
8. Take observation from PC1 and PC2 and plot a point on the plane and do it with each obsercations.
9. That is how PCA is done using Singular value decomposition. 
10. Now Calculate the Variations of PC1 and PC2. Variation is Eigenvalues(PC1 / (n-1)) where n is number of observation. For Example variation(PC1) = 15 and that for PC2 is 3
11. That means PC1 accounts for 15/18 = 83% of variation of the data. Graph of these variations is called Scree Plot
12. We can reduce the dimension by getting rid of the PC2. 

## Linear Discriminant Analysis 

LDA is yet another dimensionality reduction technique but rather than focussing on most variation (PCA), LDA focusses on maximising the seprability between known categories (within data) so we can make the best decision of dimension reduction. 

#### Considerin an example to reduce a data with two features to 1 features  (2D to 1D)

LDA reduces the dimension by creating a new axis and then projects the data onto that new axis, thus by retaining information from botht he dimensions. After projection we need to maximise the separation.

![](LDA1.png)

#### How to maximise the separation / How does the axis created?

The two criterias to consider for creating the axis is : 
1. Maximise the difference between means of categories (mu1 and mu2)
2. Minimise the variatiob within category. (s1 and s2) also called scatter

$$ \frac{(\mu1 - \mu2)^2}{s1^2 + s2^2} $$ 

By maximising the above criteria we can optimize the separability between categories. Considering we may have more than 2 dimensions and also more than 2 categories. 

* For more dimensions : The process is same. 
* For the data with more categories. : Two things change. 
	* We measure the distances among the means by taking a central point and finding the distance of this central point from all the center points of all categories. Below fig has 2 dim 3 categories.

![](LDA2.png)

	* the second difference is that LDA creates two Axis instead of 1. (in order to plot 3 points we have to have a plan it is not possible to project 3 points on a straight line) 

![](LDA3.png)

### Similarities between PCA and LDA
1. Both rank the new axis in the order of importance 
2. Both allow the user to dig and see which features/dimensions are creating new axex. (PCA -> loading scores, LDA -> which feature correlates with new axes)