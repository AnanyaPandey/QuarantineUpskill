# <font face="verdana">Google Cloud (IAM and CLI)
Difference between GAE/Cloud Function

* GAE : PAAS 
* Cloud Function : ServerLess (function that is executed when an event is triggered). To handle action based on events.

Managed / Un-Managed Instances

1. Managed Instance Groups : Auto Scaling and Auto Healing
2. Unmanaged Instance Groups : Only support Auto Healing

- Autoscaling : Adding /deleting instances in the group based on the load /need/demand.
- Auto-healing : Replace an instance that is unwell / not responding / gone bad

Q Can we have load balancer to un managed Groups ? 
Yes We can attach it to an unmanaged group explicitly. 

- If an application has predictable load. (Internal load) and access pattern are also known. Then we can keep those instances group under unmanaged group and assign them a load balancer. 

Q When auto scaling is used?

- When patters of uses not known or can’t be predicted or being ready for the increase load / burst.

-----------

Q how do we choose the loadbalancer ?

 - When to choose which load balancer HTTP/HTTPS?
 - internal v/s internal load balancing 

 
Q Three types of instances ?
 
 1. Sustained use 
 2. Committed use
 3. Preemptible : not guaranteed to stay beyond 24 hours

 
Two types of cluseters
 
 1. Transient (Short Lived)
 2. Persistent (runs for long time )

 
### Cloud Storage  (Object Storage)  : 
A persistend disk is a block storage. It has classes, It can be standard, Coldline, Nearline, Archive. It is alsop possible to encrypt data at rest. User can use cloud KMS, google managed or user managed Keys. IT also allows Cloud CDN

#### Cloud CDN Content delivery network :
Used to speed up the data transfer to the end users. especially for streaming data. Amazon prime / Netflix etc.Cloud CDN similar to Elastic Cache in AWS.

#### Different storage solutions : 
Cloud SQL : RDBMS 
Cloud Spanner : Horizontal scaling for RDBMS requirements
DataStore/Firestore : NoSQL Databases
Bigtable : Low Latency and Higher Storage Requirements
Bigquery : Data Warehouses. 

### Networking : 

* VPC : Virtual Private Cloud ( Spans across regions) (in AWS VPC is region specific)
	- Auto Mode
	- Custom mode
* VPC Peering : As long as user is ok to communicate different VPCs dont need peering. (To communicate using intenral IP : use Peering)
* VPN : establish connection between systems
* Cloud DNS : To resplve domain name into IP Address.
* Google POP : Is called Point of presense : Also called H cache.

## Identity and Access Management
#### Firs principle of IAM : Principle of lease privileges.
In GCP There are projects, folders and Instances. Permissions are given at project level. Users in proj1 dont have access to proj2 unless given access explicitly. 

Create Project -> Create Users -> Add useres to project  -> Add permissions -> 

#### List of permissions 
```bash
gcloud iam roles describe roles/browser
gcloud iam roles describe roles/editor
```

Prelimenary roles are user browser editor owner. There are some predifined roles as well. 

- Browser : just read only
- Editor : Super user access
- Owner : All the Access


Service account : It allows services / or to gain access to the services. 
Two types of servcice accounts. By default thesee service accounts have editor access. There can be 100 service accounts in the project. This can be modified in the quota. Quotas is under IAM & Admin section in google cloud console. 

1. compute@developer.gserviceaccount.com : Compute Engine Default service account
2. Cloudservice.gserviceaccount. : Google Managed Service Accounts
3. Custom Service Accounts
Hierarchy of levels. Organization > Folder > Project > Service

#### Identity aware proxy :
Tells who can accss what and any traffic is validated by IAP.  It lets user manage who has access to services hosted on app engine compute engine or HTTPS Load Balancer. Also checks if any malicious user trying to access something. 
Also check for the OWASP theats. OWASSP Are the top ten threats fora network based application. 

Cool Things under security

- Cryptography
- Managed Services for Microsoft Active Directory API
- Cloud Web Service Scanner


## CLI 

To Create a VM instance using the template : create vm.yaml with instance config parameters. then execute below command. It is also possible to nest these multiple templates. 

```bash
gcloud deploymeny manager deploymetms create myfirst-deployment --config vm.yaml
gcloud deployment-manager deployments describe myfirst-deployment
```