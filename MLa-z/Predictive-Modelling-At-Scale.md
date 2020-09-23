# Predictive mdoelling strategy at Scale. 

AI : A computer doing something, that if done by human, would be judged as intelligent : Colin Shearer
Some of the practiced are in AI are 

* Natural Language Processing
* Robotics
* Computer Perception
* Machine learning
* DSS and Expert systems

In ML, while the algorithms are designed by the humans, the models are created and outcome is learnt by the machine themselves. Considering the most basic Supervised and Unsupervised learning. 

### Supervised ML : 
Combine Past and New Data to create a model and score. From past data a model learns to create the model and then use this learning to calculate the outcome for the new data. Steps to device a supervised learning. 

1. Store the data (e.g. All Data, selected /controlled data) 
2. Assess : How much data do i need? how much is available
3. Select : Rationale for inclusion and exclusion for the data. 
4. Integrate : Merge, append, aggregate and create the usable data for the model.
5. Explore : Any Pattern in the data, any data quality issues present ? (done by data modeller)
6. Prepare : Transforming the data in which it will be used in the model.
7. Model : Creation or prepararion of the model. 
8. Score : Scoring or evaluating the model performance. 
9. Maintane : Rebuild the model. 

e.g. we had multiple data tables out of which we identified columns and created a table will be further taken ahead for the model. After this columns are transformed and coded into the format which shall be then used in training the model. 

Why the data fed to themodel becoming smaller

* Not all the cases are relevant
* Going too far may cause problems
* Balancing the pertitioning (Train and Test)

### How much data is good enough?
More than a 1000 cases that can be used in the training the data. (rule of thumb) Theere shall be non churns too which can be less than 1000. Too little is more common than too much. There also exists, train validate and then test. If data is already less we cant afford to have a validation data partition. 

#### Balancing : 
Balancing the calssification group. e.g. fraud and legit, Here the number of records are kept balanced. 
Half the records are Class0 and Half the cases can be class1. And then maintaining the same ratio we could divide the data into train validate and test. 

### Who has these big data ?
Linkedin for example has half a billion subscribers. 2.6 Billion logins monthly and Netflix has 120 Million subscribers. 37% of USA is subscribers with 8 million events persecond. So No question Big data is real and almost everybody is about to handle the big data. Active and relevant data is less in numbers. 

### Assess Stage 
Transactional data must be converted to be usable data which are relational in nature, Aggregation is a good technique for the same.  Data must focus on unique set of data. These unique data can be of customers, products anything practically,reqired for the analysis. 

* Rows per Case
* Summarize the case (using aggregation on some column)
* Sometime physically looking the data is imp. (e.g. Can we take one calendar year data or do we need to extend)
* Delete some columns and records which seem not very relavent to the study.

### Seasonality and Time Alignment 
Data in which years are out of date, but these bring seasonal effects. E.g Sales data affected by season weather economic conditions, natural disasters etc. A time series data to predict the upcomig behaviour. e.g, recent months just before the customer churned. 

### Preparing the Data 
First thing is to convert the long transactional data to a case wise data with meaningful columns. Aggregation is used to combine the rows of transactional data. aggregation can be mean medium mix or max etc. Many new featuers/ columne could be introduced after this step.

Dummy Encoding : 
Dummy creation can be done to the data where categorical data in one column can be converted to multiple columns. After Dmmy encoding all the unique data (classes) of a particular column can be converted to unique columns.

### Feature Engineering
Data Construction is another term which is used for this.

Features or columns need to be engineered sometimes based on the type of evaluation our model will b performing. In a practical situation there may be only limited data available and from those data new feautures could be engineered. E.g.

1. Dates may not b important but gap between dates could be important.
2. Date of event : Exact date may not be a great factor but the day could be, whether it was weekday or weekend 
3. Product ID : which product did the customer buy may not be important but if we classify whether it was stationary, eatables, sanitary etc.
4. Comment : Customer comment or feedback : This can be text parsed for multiple boolean feature creation. like "fee", "overcharge" etc.

### Modelling processes and challenges



