# GCP BigData and ML Fundamentals

[1. Introduction to the tutorial](#intro) </br>
[2. Introduction to GCP](#i2) </br>
[3. Introduction](#intro) </br>
[4. Introduction](#intro) </br>


## <a name="intro">Introduction</a>
Challanges and practical use cases which a team might face during Big data or ML journey in Google Cloudl 

1. Data Driven decision - Organizational level
2. Google Cloud product in context
3. Expanding knowledge about product and knowledge
4. Summary Module 
5. One specific case is demonstrated end to end in the Lab scenario.

Smart sensors, devices, electronic appliances, electrical appliance generate data and only 1% of the data that is generated is analyzed, hence there is a lot of insights still to be mined from the generated data. 

E.g. of Bigdata Challenges. 
 - Migrating existing data workloads to the hig data systems (hadoop, spark etc.)
 - Analyze the large datasets at scale
 - Building the streaming data pipelines
 - Applying machine learning to your data

 
### <a name="i2"> Introduction to GCP </a>
GCP infrastructure : BigData and ML products build on these. Learn from others. Building the right structure.

 - Compute
 - Storage
 - Networking
 - Security


#### Building blopcks of googles core infra
 * Base Layer - Security
 * Middle Layer - Compute, Storage, Networking
 * Top Layer : Bigdata and ML products
 
Image 3 Layers : R G B each considering 8 Mega Pixel resolution.3264 * 2448 x 3  = 23 Million data points per image.  and if there is 30 frames persond it will have billion data points. Approx 13 PB of photo/video uploaded on google photos per day. 
 
Youtube : 400 hours of video per day uploaded. Google trains its models using its vast powerful machiene and then isntalls the small trained version of model on to the apps (phones) or browser. 
 
A lot of compute power needed for the analytical products. Google photos has started auto videio stabelizationl. What could be inputs. (lot of images ordered - videos). Also it requires camera position their sensor information like gyroscope and angle elevation which feeds to the analysis. (ML model). 

Examples: to create movie recommendation enigne, user can use Cloud Video Intelligence. 
Moore's law illustrated the rate of increase of the computing power. With each year Moore illustrated the complexity and density of microchips per square inch increases and compute power increases. In recent years growth has dropped dramatically. From year 1985 - 2000 computing power grown tremendously. 

One way is to design the application specific computing processors. Google desinged TPUs (Tensor processong Units) which are specialzed for ML. These are Cloud ASIC-TPU v2 and v3 64 and 128 HGM (High bandwidth memory). Google also provides these TPUs to their users of Google Cloud.

Cloud TPUs are 10x speed ups over previous infrastructure. Ebay is the cusomter of these TPU. Google saved data center cooling efficiency energy by 40%. and thus power effectiveness increased by 15%. 

#### Demo : Creating a VM on Compute Enginer



## <a name="pookie">Second Topic</a>
