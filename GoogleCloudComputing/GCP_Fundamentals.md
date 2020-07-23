

## VPN 

Using Google VPN(Virtual Private Network) you will be able to establish a fine-grained access and permission control over project resources in GCP. One can use VPN to securely connect to the services running in multiple project without exposing to public.

## Google App Engine 
Google App Engine is a PAAS (Platform as a Service) service that fully manages the web applications at scale.Users need not worry about the infrastructure on which the application is running, as it is completely managed by GCP.Once the application is uploaded, App engine automatically handles the detail of capacity provisioning, monitoring and scaling on demand. Users can select from the list of popular languages, libraries and frameworks to develop their application.

Some of the languages available with App engine are as follows:

 - GO
 - PHP
 - Java 
 - Python 
 - Node.js
 - .NET etc

Features of App Engine:

- Many popular languages and frameworks are available and users are also allowed to bring custom runtimes
- Increased developer productivity as management of infrastructure is taken care by App Engine
- Different versions of application can be easily maintained across environments

## Google Kubernetes Engine :

Google Kubernetes Engine is used to orchestrate docker containers.It lets user to scale their cluster at any scale, use integrated developer tools and get multi cluster support. The operational overhead is resolved by making use of auto repair and auto upgrade options from GKE. The vulnerability scanning of container images and encryption of Data are provided by default. The operations can be streamlines with release pipeline channels.

## Google Cloud Run : 

Cloud Run is a fully managed compute platform that automatically scales your stateless containers.It is serverless i.e it abstracts away all infrastructure management, so users can focus on what matters most—building great applications. Users can run their containers in fully managed Cloud Run or on Anthos, which supports both Google Cloud as well as on‐premises environments. As Cloud Run is built upon an open standard, Knative, it enables the portability of your applications. 

## Cloud Function : 

Cloud Functions is Google Cloud’s event-driven serverless compute platform. It enables users to run their code locally or in the cloud without having to provision servers. Since Cloud Functions scales up or down, you pay only for compute resources you use. Moreover, users can easily create end-to-end complex development scenarios by connecting with existing Google Cloud or third-party services.

## VPC(Virtual Private Cloud) 

VPC is an isolated private network within the Google cloud that provides network functionality for GCP resources. 
VPCs are configured under regions. By default, every project starts with a VPC created by GCP termed as default VPC. Users can define their own VPCs within regions based on the business requirement.
VPC network within GCP are further divided into subnetworks and referred as subnets. Subnets are also defined as IP address ranges in CIDR notation and will be contained within a single region.
We can isolate portion of network or a subnet by using firewall rules.

## Anthos
Anthos is an open hybrid and multi-cloud application platform that enables you to modernize your existing applications, build new ones, and run them anywhere in a secure manner. Built on open source technologies pioneered by Google—including Kubernetes, Istio, and Knative—Anthos enables consistency between on-premises and cloud environments and helps accelerate application development

## Cloud Armor
Google Cloud Armor delivers defense at scale against infrastructure and application distributed denial of service (DDoS) attacks by using Google's global infrastructure and security systems.

### Features of Cloud Armor
Pre-defined rules to protect against the web’s most common attacks: ut-of-the-box  rules from the Mod Security Core Rule Set to defend against cross-site scripting (XSS) and SQL injection defense

Rich Rules Language: Create rules using any combination of L3–L7 parameters and geolocation to protect your deployment with a flexible rules language. Also use predefined rules to defend against cross-site scripting (XSS) and SQL injection defense

Visibility and monitoring: Easily monitor all of the metrics associated with your security policies in the Cloud Monitoring dashboard. You can also view suspicious application traffic patterns from Cloud Armor directly in the Security Command Center dashboard, now in beta

Logging: Get visibility into Cloud Armor decisions as well as the implicated policies and rules on a per-request basis via Cloud Logging

Preview mode: Deploy Cloud Armor rules in preview mode to understand service access patterns, rule accuracy, and impact on production traffic before enabling active enforcement in your policies and to ensure safe operation of your applications

IP-based and geo-based access control: Filter your incoming traffic based on IPv4 and IPv6 addresses or CIDRs. Identify and enforce access control based on geographic location of incoming traffic

## Network Intelligence Center 

provides a single console for managing Google Cloud network visibility, monitoring and troubleshooting. Network Intelligence Center modules :  Network Topology: It helps you to monitor your Virtual Private Cloud networks and their associated metrics. Connectivity tests: It aids you to test network connectivity to and from your network.

Network Topology : Network Topology lays out information in a graph format, where the nodes and lines represent entities and connections in your network

No additional configurations or agents are required to use Network Topology

Network Topology can also help you analyze the performance of your network

A Network Topology graph shows your resources and traffic as entities and connections

## Data Store

Datastore is a highly scalable NoSQL database. It best suites web and mobile applications. It is capable of handling sharding and replication automatically while maintaining the availability of the application. Features of Datastore:
It is highly scalable and fast It maintains performance even if the traffic is high It supports various type of data types Data in Datastore is accessible from JSON, API, open source clients or through ORMs It ensures ACID transactions and it is completely managed

 Relational database

* CloudSQL
* CloudSpanner

Non-relational database

* Cloud Bigtable
* Cloud Firestore
* Cloud Memorystore

## Big Table
Bigtable is a petabyte-scale NoSQL database which is completely managed by GCP. 

- It is ideal for workloads such as analytical, machine learning and operational.
- It is highly available and durable
- It is highly resilient
- Any data that is stored in Bigtable can be fetched at a faster rate
- It can handle millions of operations per second
- It is highly scalable up-to hundreds of petabytes

## Fire Store

Firestore is also a highly scalable NoSQL database. It is the advance version of Datastore. It makes it easy to store, sync and analyse your mob, web, IOT applications at global scale. The connection to the firestore can be made directly from your web/mobile clients, thus making it serverless. 

* It has built-in security access control for data
* Validation of data is made simpler via configuration language
* The databases will be upgraded automatically without any downtime
* Automatic replication can be made even across regions in-order to ensure that the data is safe even during disasters

## Mrmory Store 
Memorystore for Redis is a fully managed in-memory data store service which is built on scalable, secure, and highly available infrastructure managed by Google.Users can use it to build application caches that provides sub-millisecond data access. Memorystore is compatible with the Redis protocol, allowing easy migration with zero code changes.

 
* It allows users to choose the right service tier that fits their cost and availability requirements for Redis instance
* Memorystore for Redis is protected from the internet using VPC networks and private IP and comes with IAM integration
As provisioning, replication, failover, and patching are all automated, it drastically reduces the time users spend doing DevOps
* Monitors your instance and set up custom alerts with Cloud Monitoring

Standard Tier Memorystore for Redis instances provide a 99.9% availability SLA with automatic failover to ensure that your instance is highly available

Memorystore is compatible with Redis protocol which makes it easy to switch your applications with no code changes

## Cloud Spanner
Cloud Spanner is the first scalable, enterprise-grade, globally-distributed, and strongly consistent database service built for the cloud specifically to combine the benefits of relational database structure with non-relational horizontal scale.

This combination delivers high-performance transactions and strong consistency across rows, regions, and continents with an industry-leading 99.999% availability SLA, no planned downtime, and enterprise-grade security.

Cloud Spanner revolutionizes database administration and management and makes application development more efficient.

 

Features of Cloud Spanner
Cloud Spanner is horizontally scalable across rows, regions, and continents, from 1 to hundreds or thousands of nodes

Spanner is fully managed by GCP and provides ease of deployment at every scale and every stage. Also, Synchronous replication and maintenance are automatic and built-in

It provides everything you would expect from a relational database—schemas, ACID transactions, and SQL queries 

Supports multiple languages such as C#, Go, Java, Node.js, PHP, Python, and Ruby. Morover, JDBC driver is available for connectivity with popular third-party tools

Supports data-layer encryption, IAM integration for access and controls, and audit logging


## SQL Server 
Cloud SQL is a databases service by GCP which is fully compatible with applications using MySQL, PostgreSQL, and SQL Server.

It helps one connect with nearly any application, anywhere in the world.

Cloud SQL automates backups, replication, and failover to ensure one's database is reliable, highly available, and flexible to an organization's performance needs.

 

Features of Cloud SQL
It is an easy-to-manage compatible relational databases in the cloud

Helps users connect with just about any application built for MySQL, PostgreSQL, or SQL Server, from anywhere in the world

Moreover, automates database provisioning, storage capacity management, and other time-consuming tasks

Ensures reliability and security with built-in automation for high availability, backups, and security updates

Integrates easily with your workstation, as well as App Engine, Compute Engine, Kubernetes, and BigQuery

# Multi Cloud Strategy

Designing a hybrid and multi-cloud strategy
Conduct an initial workload assessment. Considering the goals outlined in the vision document, identify a candidate list of planned and existing workloads that could benefit from being deployed or migrated to the public cloud. The following section discusses this topic in more detail.

Starting with the identified candidate workloads, identify applicable patterns and, based on those patterns, candidate topologies. If you identify more than one applicable pattern and topology, refine your workload selection so that you can settle on a single pattern and topology. Iterate as necessary to refine your selections. Applying multiple patterns and topologies is a viable approach for large organizations. But this approach is rarely ideal because of the extra complexity, which in turn might slow your progress.

Prioritize your workloads. Given the many requirements, it's best to take an iterative approach.

Select an initial workload to put in the public cloud. Make sure that this workload is not business critical or too difficult to migrate, yet typical enough to serve as a blueprint for upcoming deployments or migrations.

While selecting a workload to migrate, start preparing on the Google Cloud side.

Set up the Google Cloud organization, projects, and policies that you need in order to prepare your cloud environment for its first deployments.

Implement the network topology and establish the necessary connectivity between Google Cloud and your private computing environments

## GCP best practices

* Migrating VMs to Compute Engine : Learn best practices for migrating computing workloads to Compute Engine
* Securely connecting to VMs : Establish secure communication to and from Compute Engine instances
* Operating containers : Follow recommendations for making containers easier to operate, from security to monitoring and logging
* Compute Engine regions : Consider criteria for which regions to use for your Compute Engine resources
* Design patterns for exporting Cloud Logging : Explore best practices for common logging export scenarios
* Floating IP addresses : Learn alternatives to using floating IP addresses when migrating applications from on-premises to Compute Engine
* VM image management : Understand the best ways to create and manage Compute Engine VM images
* Verifying instance identity : Use signatures to confirm the identity of an instance that you're connecting to
* Designing robust systems : Design systems using Compute Engine that can withstand disruptions
* Best practices for enterprise organizations: Learn how to set up organizations, manage identities, configure networking, establish logging, and more
* Building containers : Follow recommendations for making containers easier to build and easier to run in GKE
* Using Cloud IAM and Cloud Billing in higher education : Understand important issues for setting up your institution's Google Cloud environment
* Transferring large datasets to Google Cloud : Review important considerations for planning and implementing a data transfer to Google Cloud
* Best practices for SQL Server : Optimize Compute Engine instances that run Microsoft SQL Server
* Designing for scale on App Engine standard environment : Ensure that your App Engine apps will scale to high loads
* Optimizing application latency with load balancing : Learn how your choice of a specific load balancer on Google Cloud affects end-to-end latency

 
