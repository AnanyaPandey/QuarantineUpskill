# Route 53
Port 53 : DNS Domain name system. 
Collection of rules and records Understands a web server or other systems which IP to reach under what name. (How to reach the server based on a domain name). DNS works on ARP and RARP : Address resolution protocol on port 53 and Reverse address resolution protocol.

Just like GoDAddy and other website which sell domain name, Amazon is also a registrat (ICANN) and has a license to sell domain name. In order to use route 53 it is required to have a domain name registered with route53. One can either transfer the domain name aor register it through Route 53 by paying money for the name per year.

### AWS The most common records are : 
	 * Hostname to IPv4
	 * AAAA Hostname to IPv6
	 * CNAME hostname to a hostname
	 * Alias hostname to AWS resource 

![](SS/dns.png)

#### Route 53 can use : 

* Public domains that user own, i.e. myapplicationsomething.com
* Private domain names that can be resolved by the instances in VPC e.g.  application2.company.internal

### Advanced features of AWS Route53 :

- Load Balancing through DNS
- Health Checks (limited features)
- Routing policy
	- Simple
	- Failover
	- Geolocation
	- Latency
	- Weighted 
	- Multi-value

Route 53 requires : 0.50 $ per month per hosted zone. DNS is global and doesnt require a region selection, which means it resolves name throughout. 

## DNS TTL (Time to live)
DNS allows caching to avoid the DNS servers from overloading. The DNS also sends back the ttl along with the DNS query. (say 300s). The web browser will then cache the name resolved and will keep it for that time. Only after the TTL is expited the web browser will go to the DNS, within the TTL time the browser will keep going to the previous IP address for the requested name. TTL is manadatory for all DNS records

When DNS records are edited, we must wait for this change to get replicated across all DNS servers in system to actually see the affect. 

#### High TTL (e.g. 24 Hours)

- Very Less Traffic on DNS 
- Possible Outdated records 

#### Low TTL (e.g. 60 seconds)

- More Traffic on DNS
- Easy to change the records
- Records outdated for very less time 

### CNAME v/s ALIAS