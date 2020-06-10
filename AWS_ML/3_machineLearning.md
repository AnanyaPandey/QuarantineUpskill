# AWS MACHINE LEARNING
## Machine Learning Algorithms 

### ML Categories
* Supervised Learning
* Unsupervised Learning
* Reingofcement Learning
* Deep Learning

#### What type of problem these algorithms solve? 

Fundamental concept of ML is : 
Machine should learn from the data.

### Supervised Learning 
It is supervised by the data. Often we know the output what we need. such cases are the supervised learning

prediction, classification are the types of  supervised learning. We need to train the model with the existing data. A dataset used to train the model can be broke into 2 set training data and testing data.

Regression is one of the most popular methods used in supervised learning. predicting equipment failure, future prize are some of the example.

Classification example could be : when we want our model to take input as picture and tell whether the person in picture is smiling or not! OR the perosn is wearing mask or not. In classification the idea is to create a decision boundry which can classify the data in two homeogenous groups

Regression, Classification could be linear, polynomial etc. Our data may or may not be linear all the time. Amazon sagemaker has the product linear learner which is a combination of linear and logistic regression.

SVMs, Perceptron, Random Forests, Decision trees, KNN algorithm are some other algorithms used for either prediction or classification

Sagemaker also contains XGBoost, which works on the principle of creating a strong classfiier out of many weak classifier, the method also known as boosting. (Graqdient boosting)


### Unsupervised Learning

Clustering is another type of classification, here we might need to tell algorithm how many clusters to make. Though there are teqniques to identify the clusters out od the data itself.

Anomaly detection is yet another most popular algorithm in unsupervised learning. 

One of the anomoly detection algo is created by someone working at amazon : random cut forest. The algo works by created random cut trees. The process is repeated untill all the points are made leaf of the tree. 

Another algo is topic modelling : used for text analysis. 

Amazon sagemaker has the K means algorithm. Also there is PCA available in sagemaker for dimension reduction. LDA (Latent Dirichlet Allocation) is the technique used in topic modelling 

Random cut forest for anamoly detection is available in sagemaker and Kinesis data analytics. Similar algorithm is hot spot detection. 

### Reinforcement Learning
In some sense, it can build intelligent behaviour by maximising the output or minimizing the losses, by reinforcement. The agent controlled by the machine is learning by trial and error and no rxplicit teacher. based on the penalty it learns and gets better with each iteration. Most used in automated game plays. tic tac toe, pacman, mario etc. 

## Deep Learning



