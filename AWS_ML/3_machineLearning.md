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

there are probably 100s of supervised learning, some most famous families of algorithm which are fairly succesful are : 

1. Linear Supervised Learning : Amazon Sagemaker has an algo called Linear Learner, 
	* 	a. Linear Classification (Linear Decision Boundry)
	* 	b. Linear Regression
2. SVM
3. Perceptron
4. Non Linear Supervised Learning
	* 	SVM
	* 	SVC
	* 	Decision Trees
	* 	Random Forests
	*  XGBoost
	*  Factorization Methods : works best high dimensional data. (click prediction and recommendation etc.)
5. Polynomial
6. Neural Networks
	

### Unsupervised Learning

Clustering is another type of classification, here we might need to tell algorithm how many clusters to make. Though there are teqniques to identify the clusters out od the data itself.

Anomaly detection is yet another most popular algorithm in unsupervised learning. 

One of the anomoly detection algo is created by someone working at amazon : random cut forest. The algo works by created random cut trees. The process is repeated untill all the points are made leaf of the tree. 

Another algo is topic modelling : used for text analysis. 

Amazon sagemaker has the K means algorithm. Also there is PCA available in sagemaker for dimension reduction. LDA (Latent Dirichlet Allocation) is the technique used in topic modelling 

Random cut forest for anamoly detection is available in sagemaker and Kinesis data analytics. Similar algorithm is hot spot detection. 

**Clustering** is one of the important alogorithm of unsupervised learning. Also two algorithms might detect different number of clusters for the same data. 

**Anomoly Detection** is one of the most used algorithms under unsupervised learning. Draud detection E.g. Random cut forests. 

**Topic Modelling** Text analysis, available in Amazon Comprehend services.
The algo can provide top words that are used in a filtered context. 

Amazon SageMaker has K-Means and PCA. It is specially useful in dimension reduction. LDA : Used by Topic Modelling.



### Reinforcement Learning
In some sense, it can build intelligent behaviour by maximising the output or minimizing the losses, by reinforcement. The agent controlled by the machine is learning by trial and error and no rxplicit teacher. based on the penalty it learns and gets better with each iteration. Most used in automated game plays. tic tac toe, pacman, mario etc. 


### Deep Learning 
Neuron : A compute engine which has a vector of inputs and with weights these inputs are sumproducted and passed through activation function. Increasing the nodes and layers it will be called Artificial Neural network. 

Backpropogating is used to reduce the error. One might ask how deep is the deep ? is there any limit ? how many layers ?

1000s of layers have already been computed and trained. Amazon EC2 have the GPU enabled computing power. It gives flexibility to deploy and use the trainig odel system only durnig trainapping the model which gives great computing power in limited budget. 

Deep learnings can be supervised or unsupervised-learning based on data and time of :






