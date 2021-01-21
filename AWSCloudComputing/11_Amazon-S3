## Amazon S3

* S3 is one of the building blocks of the AWS. Mnown as infinitely scaling storage.
* May websites in world run on S3 in the backbone
* Many Integerations on s3 existsn.

### Overview

S3 allows objects (files) to store in the buckets (directories), and each bucket must have a globally unique name across all account,
Buckets are defined at the regional level. With below naming convention : 

Naming convention of bucket. 

1. No uppercase
2. No Underscore
3. 3-63 Chars long
4. Not an IP
5. Must start with lowercase or number

#### Objects 
Objects or files have keys. Key is nothing buthte full path of the file. 

* s3/bucket4/**my_file.txt**
* s3/bucket4/**folder1/folder2/my_file.txt**

* Key is the prefix and object name  : Prefix is the folder structure and object name is the filename.
* Object values are the content of the file. and Max size of object is 5TB
* At a time more than 5TB not possible, so if its more need to use multi part upload.
* Metadata can be used which is a key value pair. 
* Tags - useful for security /lifecycle 
* Version ID - if versioning is enabled. 

#### HANDSON

* Create Bucket -> Select Versioning -> Select Region -> Other Options -> Create Bucket. 
* Under object -> upload -> upload the file. --> open the file and see details.
* how to open the file : 1. Object url (need permission : s3 bucket is not publc)  2. Object action --> Open. (pre-signed url) 

### Versioning
Files in S3 can be versioned but need to be done at the bucket level. So the Same key will be updated with version numbers. It is best practice to version the buckets. Suspension of versioning will not delete previous ver. Any non versioned object will have version as 'null'

* Protect unintended delete	
* easy roll back to previous versions
* Deleting a versioned object will add delete market to the object
* Deleting the marker or version ID will permanently delete that version of object

#### HANDSON

* Properties -> bucket versioning -> enabled -> save changes.
* Objects : New settings : List versions : Version ID 'null'. if we upload next ver of the pic verion ID 'sdSGGSFBDFGWFSDFsdfsfsdf'
* Different version ID every single time same file is uploaded/ updated.	


### S3 Encryption

* 4 Methods to encrypt objects in s3 
	* SSE-S3 ; using keys handled and managed by AWS.
	* SSE-KMS to leverage aws key management service to manage encryption keys
	* SSE-C : Customer manage their own keys. 
	* Client side encryption 
* Based o the scenario we might want to change which type of encryption.

#### SSE-S3 

* Using keys managed by aws.
* object encrypted server side
* AES-256 encryption
* must set header : "x-amx-server-side-encryption"."AES-256"
 
#### SSE-KMS

* key mabagenebt service ; handled managed by kms server
* kms ; user can set who has access ot what 
* object encrypted server side. 
* Must set header : "x-amz-server-side-encryption"."awskms"

#### SSE-KMS

* server side encryption, fully managed by customer outside of AWS.
* Amazon s3 cant have access to the keys 
* HTTPS must be used.
* Encryption key must be provided in the HTTP header.

#### Client side necryption 

* this is where objects are encrypted before uploading it to the S3
* Amazon S3 encryption client can help encrypt the object.
* Client must decrypt when retreiving the obbject from S3
* Fully customer managed encryption.

### Encryption in transit (SSL/TLS)

* HTTP endpoint not encrypted
* HTTPS endpoint encrypted in flight
* HTTPS is mandatory for SSE-C

#### HANDSON

* server side encryption settings -> Edit it inplace.
* Service side -> enabled --> Chose encryption type
* Or Go to properties -> and edit the default encryption seetings for the bucket.
* All object within bucket will follow same encrypt format.

### Security and bucket policies

* User Based - IAM policies ; which API calls should be allowed from specific user from IAM.
* Resource based - Bucket policy - bucket wide rules - allows cross account access to s3 buckets.
	* Object ACL - 
	* Bucket ACL - 
	
I AM role can access S3 bucket if : 
* IAM user permission alow it, or resouce policy allow it.
* There should be no explicit DENY policy.

### S3 bucket policy : 

* JSON based policy 
	* Actions set of API to allow or deny
	* The principle is to allow the policy onn user or account.
* s3 bucket policy is to 
- Grant public access ot the accou
* Bucket setting to block public access
* ACL 
* Settings where to prevent company data leaks.
* Can be set at account level

### S3 Security - Others 

* Networking - access s3 through VPC endpoints, without internet
* Loggind and audit - S3 access logs can be stored in other s3 bucket.
* API calls can be logged as aws cloud trail
* User Security - MFA : can be required in the versioned buckets to delete the specific version objects
	 - Pre signed URLs: that are valid only for limited time.

### Bucket policy 

* Creating policy such that only allow objeet with encrypted key
* Create policy -> deny -> from * everywhere -> action is upload (PutObject) -> ARN object bucketARN/* -> 
* indicate anything in the object -> Condition ; straingNotEqual -> key and value AES256 

### S3 Websites 

S3 can host statis websites and host on www. URL will be simple e.g. 
* <bucketname>.s3-website.<region>/amazonaws.company
* In case of forbidden 403 Error, make sure bucket policy allow public access.

**HANDSON** 

* Making the bucket a website -> Need index.html and error.html file. -> upload both-> 
* Go to properties -> Static website hosting -> index and error document.
* Under static website hosting -> link. paste the link get the 403 error. 
* Two settings need to be changed 
	* 1. Disable the block public access setting. - public bucket policy
	* 2. Policy edit -> Allow -> GetOBject -> ARN is the bucket ARN-> * Copy JSON -> paste. 
	
## CORS

* Origin is a scheme(protocol), a host(domain) and port.
* CORS is cross origin resource sharing. 
* e.g. - https:\\www.helloworld.com : implied host is the name and port is 443
* Browsers - mechanism to allow request to other origin. while visiting main origin.
* example.com/app1 and example.com/app2 apps must allow CORS header. 
* If a client does a CORN origin request on s3 bucket, we need to enable the CORS header. 

Request going directly to a site v/s request first going to some other site then from that place going to CORS site. 

### S3 Consistency model 

As soon as user uploads a new object, once he gets correct response from Amazon S3, then we can retreive it using the GET command.
Read after Write consistency for PUTS of new object. 

PUT200 ==> GET200, so we can do get after PUT. 
GET400 ==> GET200 ==> GET400 Eventually consistent 

Eventual consistent for DELETE and PUTS of existing objects.
if we read after updating, we might get older version.
PUT200 ==> PUT200 ==> GET200 (might b older ver)
DELETE200 ==> GET200 succes..

There is no way to get strong consistency.
 
