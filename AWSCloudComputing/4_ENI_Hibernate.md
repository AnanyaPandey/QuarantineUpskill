
# Elastic Network Interfaces (ENI)

Network interface is the logical component in a vPC that represent the virtual network card. 
eth0 : Primary ENI provide EC2 network connectivity. 

Attributes : 

- it will have 1 private IP primary and may have multiple secondary IPv4 (pub/pri)
- Each can have  One elastic IP IPv4
- Public IPv4
- one /more sec groups
- a Mac Address
- Source Destination check Flag


 ENIs are bound to specific AZs. ANIs can also be moved from one EC2 instance to another, and that is helpful in failovers.
 ENI has a unique interface ID which is unique for each ethernet interfaces in AWS. Under Network and Security -> Network Interfaces : to view all the interfaces and control them combined.

Create Network Interface : secondary ()
	
	- Choose a subnet AZ
	- IPv4 : auto assign
	- Sec Group : Select Sec Group.

After Crearing : Attach the Network Interface to : an Instance/Detatch it as per the use.
Just like the storage network component are also controled individually. IT can be attached and used as per use. 

<span style=color:"blue">**hot attach**</span>span> : When a user can attach a device / detatch while the instance is running, it is called a hot attach.

Unless "Delete On Termination" is checked, even if instance is terminated the interface will live. 

# EC2 Hibernate 
We can stop terminate instances anytime. and EBS volume is kept for netxt start if not terminated. When terminated, the root file system (EBS volume) is also destroyed. 

On Start : First OS boots then the EC2 User data script us run on the first boot.
Then starts all the applications and caches and services that are installed on the system. (which takes time)

There is an option tto hibernate : Here all in memory state (RAM) is preserved. 
 - instance boot is much faster
 - OS is not stopped

 Under hood, RAM is dumped into the root EBS volume...... (EBS root must be encrypted) -> on start the ram kicks back in from the ebs volume. 

 Use Cases : 
  - Long running applications
  - applications that take time to start

Conditions. - Good to know
 - Supported instances : C3,C4,C5,M3,M4,M5,R3,R4,R5
 - It works on Amazon linux 2 or Linux 1
 - RAM size should be less than 150 GB
 - Not suppoerted for bare mertal instances
 - Root Volume : must be EBS encrypted and must be space
 - available for on demand and reserved instances.
 - Instance can be hibernated for more than 60 days.


Enabling Encryption : While creating or editing the existing instnce, change the Instance type M5/M4 etc. (not free) -> Shutdown behaviour -> additional hybernation. and /EBS must be encrrypted and have enough storage space to kepp the ram memory (default) ecryption works. 


EC2 is the most Fundamental service to the amazon web servie. Solution architecture is also a critical part of EC2. 

## Exam tips for EC2

 - Instances billed by second and t2 micro is the free tier. 
 - Timeout happens almost always due to security group issue (port not open) communication on a port not happening. 
 - Permission issue on ssh : due to pem file permission CHMOD +4000
 - Sec group can also rtake input as other security groups insread of ip ranges. 
 - Dynamic set of EC2 instances in the sec groups.
 - Peivate,public and elastic ip.
 - Ec2 Launch mode types. 
 	- On Demand
 	- Reserved
 	- Spot Request Instances
 	- Dedicated host
 - Instance types 
 	- R Ram
 	- I I/O 
 	- C CPU
 	- M Medium / Average
 	- G GPU
 	- T2 Burstable instances
 	- T3 Burstable instances
 - AMIs to configure preinstlaled softwares and script (Faster Boot)
 - AMIs are region specific. 
 - EC2 Placement Groups 
 	- Cluster - Single point of failure/high Bandwidth connecivity
 	- Spread - High available - lean network connectivity
 	- 
 	- 