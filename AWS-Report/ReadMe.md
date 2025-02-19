**AWS Report:**

### **EC2 (Elastic Compute Cloud)**
- **Purpose:** Provides scalable computing capacity in the cloud. 
- **Key Features:** Virtual servers (instances), customizable hardware options, security groups, and Elastic IP addresses.
- **Use Case:** Running applications, websites, and for development environments.

### **ASG (Auto Scaling Groups)**
- **Purpose:** Automatically adjusts the number of EC2 instances based on demand.
- **Key Features:** Scaling policies, health checks, and integration with ELB.
- **Use Case:** Ensures applications are highly available and can scale dynamically.

### **ELB (Elastic Load Balancing)**
- **Purpose:** Distributes incoming application traffic across multiple targets, such as EC2 instances, in multiple Availability Zones.
- **Types:** Application Load Balancer, Network Load Balancer, Classic Load Balancer.
- **Use Case:** Improves application availability and fault tolerance.

### **EBS (Elastic Block Store)**
- **Purpose:** Provides persistent block storage volumes for use with EC2 instances.
- **Key Features:** Snapshots, encryption, and various volume types like SSD and HDD.
- **Use Case:** Storage for databases, file systems, or boot volumes for EC2 instances.

### **WAF (Web Application Firewall)**
- **Purpose:** Protects web applications from common web exploits.
- **Key Features:** Rules to block common attack patterns, integration with CloudFront and ALB.
- **Use Case:** Security against SQL injection, cross-site scripting (XSS), and more.

### **CloudFront**
- **Purpose:** A content delivery network (CDN) service that securely delivers data, videos, applications, and APIs to customers globally with low latency and high transfer speeds.
- **Key Features:** Caching, SSL/TLS encryption, global edge locations.
- **Use Case:** Speed up distribution of static and dynamic web content.

### **Route 53**
- **Purpose:** A scalable and highly available Domain Name System (DNS) web service.
- **Routing Policies:**
  - **Simple:** Maps a DNS name to one or more IP addresses.
  - **Weighted:** Distributes traffic based on weights assigned to records.
  - **Latency-based:** Routes traffic to the AWS region with the lowest latency.
  - **Failover:** Configures active-passive failover.
  - **Geolocation:** Routes based on user's geographic location.
  - **Multivalue Answer:** Returns multiple values (e.g., IP addresses) in response to DNS queries.
- **Use Case:** Managing DNS records, traffic management, and domain registration.

### **VPC (Virtual Private Cloud)**
- **Purpose:** Provides a logically isolated section of the AWS cloud where you can launch AWS resources in a virtual network.
- **Components:**
  - **Subnets:** Segments of the VPC's IP address range.
  - **Internet Gateway:** Connects the VPC to the internet.
  - **NAT Gateway/Instance:** Allows instances in private subnets to connect to the internet but not vice versa.
  - **Route Tables:** Control where network traffic from subnets or gateways is directed.
  - **Network ACLs:** Stateless firewall for controlling traffic in and out of one or more subnets.
  - **Security Groups:** Stateful firewalls at the instance level.
  - **VPN Connections:** Secure communication over the internet.
  - **Peering Connections:** Links two VPCs.
  - **VPC Endpoints:** Private connections to AWS services without an internet gateway.
- **Use Case:** Creating secure, isolated networks for your applications.

### **CW (CloudWatch)**
- **Purpose:** Monitoring and management service for AWS resources and applications.
- **Key Features:** Metrics, logs, alarms, and dashboards.
- **Use Case:** Performance monitoring, log storage, and alerting.

### **CT (CloudTrail)**
- **Purpose:** Tracks user activity and API usage in AWS.
- **Key Features:** Event history, trail creation for logs, integration with CloudWatch.
- **Use Case:** Compliance, security analysis, troubleshooting.

### **CloudFormation**
- **Purpose:** Allows you to use programming languages or simple JSON or YAML templates to model and set up AWS resources.
- **Key Features:** Stacks, change sets, nested stacks.
- **Use Case:** Infrastructure as Code (IaC), automating resource provisioning.

### **IAM (Identity and Access Management)**
- **Purpose:** Manages access to AWS services and resources securely.
- **Key Features:** Users, groups, roles, policies, Multi-Factor Authentication (MFA).
- **Use Case:** Control who can access what within your AWS environment.

### **ECS (Elastic Container Service), ECR (Elastic Container Registry), EKS (Elastic Kubernetes Service)**
- **ECS:** Highly scalable, high-performance container management service.
  - **Use Case:** Running Docker containers on AWS.

- **ECR:** Fully managed Docker container registry.
  - **Use Case:** Store, manage, and deploy Docker images.

- **EKS:** Managed Kubernetes service to run Kubernetes on AWS without needing to install and operate your own Kubernetes control plane.
  - **Use Case:** Orchestrating containerized applications with Kubernetes.

Each of these services plays a crucial role in building, managing, and securing cloud-based applications and infrastructure on AWS.
