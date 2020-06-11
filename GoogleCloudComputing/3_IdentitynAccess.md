# GCP Core Infrastructure
## <span style = "color:blue">Identity and Access Management</span>

I am policies tell who is who and who can do what in the GCP platform. 

 - who ?
 - what can they do ?
 - On which resource they can do this  ? 
 
this is defined by using the GCP IAM. 


I Am poloicies can be applied to any user and this who can be a google account, or a cloud identity, it can be a service account, a google group or a cloud identity/G Suite domaain. 

Policies are always inherited from top to bottom depending on which entity the policy is applied. 

There are 3 type of roles in GCP 
 
 - Primitive : broad roles applied to projects, owner editor viewer roles. editor is viewer + editor, and owner cando anything. It also allows owner to setup billing. 
 - Predefined : A finer type of role is predefined : This can be applied on a folder or on a project or entire org unit, or to a compute engine entity.
 - Custom  It can be customised as and when it is required. User has to manage all permissions. It can only be used at project or org level. NOT on folder level. 

 Example for IAM : Admin role which can edit and has all provileges. 
 It is best recommended to give least provolege.

Service accounts can be used if someone dont want a human user to do th ejob. Service accounts can be given to a virtual machine or a service / application and service accounts dont authenticate using password they use cryptographic keys. Someone has to manage these service accounts also. 

## Interacting With google Platform 

4 Ways to interact

 - Console : A web based administrative interface. The end user may not be using this gui web console. It let enable disable api services and give access to cloud shell. 
 - Google Cloud SDK : a set of tools to manage resources on GCP. it include g cloud tool which let users manage the same gcloud, gsquery and BigQuery. A virtul machine with these tools are available, one can also install these in own machines. 
 - Restful APIs : Programmatic access to products and services, these typicsally use JSON as interchange format. this can be enabled from GCP web console. APIs name resources can be controlled through codes. It lets user to turn on and off the APIs. The GCP has included with the tool called APIs explorer to manage the same.
 - Google Console Mobile app : Manage VMs and database instances, Manage billing and visualize projects.



