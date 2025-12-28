---
title: Projects
layout: page
---

I've been involved in the infrastructure of the following projects over time:

<div class="project-card" markdown="1">

### ViGIE Solutions "lift and shift"

ViGIE Solutions is a company dedicated to the development of integrated continuous monitoring solutions, as well as facilities maintenance management. When they first engaged with me, they had a "legacy" set of applications based on LAPP (Linux Apache Postgresql PHP) running on two bare metal servers on Linode. The project was to lift the applications and shift them to AWS whilst making the setup redundant in terms of compute, storage and databases and using the principles of configuration management and infrastructure as code.

**Highlights:**

- Designed a resilient and scalable architecture in AWS codified with Ansible for both infrastructure provisioning, as well as configuration management
- "Lifted and shifted" service by service from the previous bare metal servers to EC2 instances under auto-scaling groups and load balancers
- Moved database from self-hosted to AWS RDS, which guaranteed patching and maintenance without overhead to the team
- Setup security with AWS VPC and Security Groups as well as an Ansible playbook to conduct the maintenance of the team's SSH keys in servers

<div class="project-meta">
<strong>Key numbers:</strong> 18 Ansible roles, 15 EC2 instances, 5 RDS databases, 12 applications<br>
<strong>Technologies:</strong> Ubuntu, AWS (EC2, ASG, ALB, IAM, S3, RDS, VPC), PostgreSQL, Ansible<br>
<strong>Client:</strong> <a href="https://www.vigiesolutions.com/">ViGIE Solutions</a> &middot; Sensors and Monitoring<br>
<strong>Timeline:</strong> July 2016 – October 2017
</div>
</div>

<div class="project-card" markdown="1">

### Foursource "from scratch"

Foursource is a B2B company that aims to resolve the missing transparency in the highly-fragmented, global sourcing markets and make apparel sourcing less costly and risky. The engagement was completely "green field" — I was asked to create the base infrastructure in record time before developers started.

**Highlights:**

- Created the base infrastructure on AWS one month before developers started working on the PoC with an AngularJS+Nginx frontend and Golang microservices
- Setup Jenkins as the Continuous Integration server
- Setup RabbitMQ server as the messaging queue
- For caching used Redis on AWS ElastiCache and Nginx
- Setup AWS CloudFront as the CDN

<div class="project-meta">
<strong>Key numbers:</strong> 8 Ansible roles, 9 packer configs, 4 environments<br>
<strong>Technologies:</strong> Ubuntu, Vagrant, Ansible, Terraform, Packer, Jenkins, Docker, Nginx, RabbitMQ, PostgreSQL, AWS<br>
<strong>Client:</strong> <a href="https://foursource.com/">Foursource</a> &middot; Clothing B2B<br>
<strong>Timeline:</strong> October 2016 – April 2017
</div>
</div>

<div class="project-card" markdown="1">

### Chic by Choice "improving the infrastructure"

Chic by Choice was a fashion rental company. Their CTO contacted me to improve the resilience, security and automation of their infrastructure.

**Highlights:**

- Assisted with task automation, security (SSH hardening and security groups) and cost savings by identifying unused capacity
- Improved log rotation, CI workflow and Datadog monitoring reporting
- Researched the implications of a move from Unicorn to Puma for the Ruby on Rails application

<div class="project-meta">
<strong>Key numbers:</strong> 7 EC2 c3.xlarge instances, 2 Digital Ocean instances<br>
<strong>Technologies:</strong> Ubuntu, Git, Codeship, Capistrano, Redis, Cloudflare, Datadog, Elastic Search, Nginx, PostgreSQL, Ansible, Terraform, AWS<br>
<strong>Client:</strong> <a href="https://chic-by-choice.com/">Chic by Choice</a> &middot; Fashion<br>
<strong>Timeline:</strong> August 2016 – March 2017
</div>
</div>

<div class="project-card" markdown="1">

### LTP Labs "deploying web apps and automated ELT systems"

LTP Labs aims to help their clients achieve sustainable and significant improvements in their performance through combining advanced analytics and business expertise. They needed a solution that would scale beyond their on-premise Microsoft SQL database cluster.

**Highlights:**

- Assessed and recommended data warehouse technologies for big data, migrating from SQL Server to AWS Redshift
- Setup recurring maintenance tasks on AWS ECS jobs for AWS Redshift data
- Helped migrate the company's website from HTTP to HTTPS with zero downtime
- Setup a cluster for a Vue.js-frontend and Django-backend project backed by Redis and Aurora MySQL
- Containerised complex ELT jobs created with Talend

<div class="project-meta">
<strong>Key numbers:</strong> 2 AWS ECS clusters, 6 nodes dc2.large Redshift cluster, 50M+ rows/day<br>
<strong>Technologies:</strong> Ubuntu, Docker, Nginx, Gitlab CI, AWS (ECS, Redshift, RDS, S3, ElastiCache, ALB, VPC)<br>
<strong>Client:</strong> <a href="http://ltplabs.com/">LTP Labs</a> &middot; Big Data Analytics<br>
<strong>Timeline:</strong> June 2017 – Present
</div>
</div>

<div class="project-card" markdown="1">

### WikiTribune "from PoC to Pilot in 2 languages"

WikiTribune is an inventive news platform which evolves journalism by bringing together a Wiki-style community and paid professional journalists. They needed to move from an infrastructure with little resiliency in AWS Lightsail into a scalable, multi-region setup.

**Highlights:**

- Transformed a WordPress PoC infrastructure to AWS scalable and resilient infrastructure using Terraform, Ansible, and Packer
- Replicated the work across three environments and two AWS Regions for different user languages
- Crafted the dev and staging setup to destroy every night and redeploy fresh every morning from CI/CD pipelines
- Cloudflare fronting the websites for security (DDoS, OWASP, Firewall) and performance (CDN, minification, caching)

<div class="project-meta">
<strong>Key numbers:</strong> 15 EC2 instances, ~20 deployments per day<br>
<strong>Technologies:</strong> Ubuntu, Ansible, Packer, Terraform, Gitlab CI, Docker, Cloudflare, AWS (EC2, ECS, ASG, S3, RDS, VPC, SNS)<br>
<strong>Client:</strong> <a href="https://www.wikitribune.com/">WikiTribune</a> &middot; News Agency<br>
<strong>Timeline:</strong> September 2017 – Present
</div>
</div>
