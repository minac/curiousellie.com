---
title: About
layout: page
---
![Profile Image]({{ site.url }}/{{ site.about-picture }})

<p>Ellie is a curious elephant. One that really likes to learn and keep exploring the ever changing technology around IT Infrastructure and DevOps. Curious Ellie is the brainchild of Miguel David, who is the lead consultant of the company, with expertise on bespoke solutions for startups and small companies.</p>

<h2>Skills</h2>

<ul class="skill-list">
	<li>Languages: Portuguese (native), English (fluent), Italian (intermediate)</li>
	<li>Operating Systems: Linux Red Hat/CentOS/Ubuntu, Macintosh, Unix HP-UX and Solaris</li>
	<li>Programming languages: Bash Shell Scripting, Awk, Sed, PHP, Python, Visual Basic, Java, C#, Perl, R (by decreasing experience order)</li>
	<li>Modelling/Data formats: YAML, HTML, CSS, JSON, XML (with XSL and DTD) and UML</li>
	<li>Databases: MySQL, PostgreSQL, Oracle, MongoDB</li>
	<li>Source Control Systems: git (github, Gitlab, Bitbucket), SVN (Tortoise)</li>
	<li>Automation: Ansible, Terraform, Vagrant, Packer</li>
	<li>CI/CD: Gitlab CI, Jenkins, Bitbucket Pipelines</li>
	<li>Extensive experience and a fulfilment from working in multi-cultural environments</li>
</ul>

<h2>Projects</h2>

<p>I've been involved in the infrastructure of the following projects over time:</p>

<h3>ViGIE Solutions "lift and shift"</h3>
<b>Context:</b>
ViGIE Solutions is a company dedicated to the development of integrated continuous monitoring solutions, as well as facilities maintenance management. When they first engaged with me, they had a "legacy" set of applications based on LAPP (Linux Apache Postgresql PHP) running on two bare metal servers on Linode. The project was to lift the applications and shift them to AWS whilst making the setup redundant in terms of compute, storage and databases and using the principles of configuration management and infrastructure as code.
<b>Highlights:</b>
- Designed a resilient and scalable architecture in AWS codified with Ansible for both infrastructure provisioning, as well as configuration management
- "Lifted and shifted" service by service from the previous bare metal servers to EC2 instances under auto-scaling groups and load balancers to allow for partial failure of hardware
- Moved database from self-hosted to AWS RDS, which guaranteed patching and maintenance without overhead to the team
- Setup security with AWS VPC and Security Groups as well as an Ansible playbook to conduct the maintenance of the team’s SSH keys in servers
- Worked with the team to standardise on Ubuntu 16.04, all tasks were executed in collaboration with the developers in a DevOps fashion
<b>Key numbers:</b> 
18 Ansible roles, 15 EC2 instances, 5 RDS databases, 12 applications
<b>Role/technologies:</b>
IT Infrastructure Consultant. Ubuntu 16.04, AWS (EC2, ASG, ALB, IAM, S3, RDS, VPC), PostgreSQL, Ansible, Git on Bitbucket
<b>Client:</b>
<a href="https://www.vigiesolutions.com/">ViGIE Solutions</a> - Sensors and Monitoring 
<b>Timeline:</b>
July 2016 to October 2017

<h3>Foursource "from scratch"</h3>
<b>Context:</b>
Foursource is a B2B company that aims to resolve the missing transparency in the highly-fragmented, global sourcing markets and make apparel sourcing less costly and risky. The engagement was completely "green field" in the sense that I was asked to create the base infrastruture in record time in the month before developers started the work and then to continue evolving it.
<b>Highlights:</b>
- Created the base infrastructure on AWS one month before the developers started working on the PoC with a Angularjs+Nginx frontend and Goland microservices in the backend. Both the frontend part of the app as well as the backend microservices were placed in autoscaling groups and fronted by load balancers
- Setup Jenkins as the Continuous Integration server 
- Setup RabbitMQ server as the messaging queue
- For caching used Redis on AWS ElastiCache and Nginx
- Setup AWS CloudFront as the CDN
- Used a DevOps approach in which I made sure the solutions were discussed with the developers and built so that they could maintain or make changes by merely changing infrastructure code
<b>Key numbers:</b> 
8 Ansible roles, 9 packer configs, 4 environments (dev, staging, showroom and live)
<b>Role/technologies:</b>
IT Infrastructure Consultant. Ubuntu 16.04, Vagrant, Ansible, Terraform, Packer, Jenkins, Yarn, Docker, Nginx, RabbitMQ, PostgreSQL, Git on Bitbucket, AWS (EC2, ASG, ALB, IAM, S3, RDS, VPC, CloudFront)
<b>Client:</b>
<a href="https://foursource.com/">Foursource</a> - Clothing B2B 
<b>Timeline:</b>
October 2016 to April 2017

<h3>Chic by Choice "improving the infrastructure"</h3>
<b>Context:</b>
Chic by Choice was a fashion rental company. Their CTO contacted me to improve the resilience, security and automation of their infrastructure which had already been created by the CTO himself.
<b>Highlights:</b>
- Assisted with task automation, security (SSH hardening and security groups) and cost savings by identifying unused capacity and resizing of servers
- Improved log rotation, CI workflow and Datadog monitoring reporting
- Researched the implications of a move from Unicorn to Puma for the Ruby on Rails application
<b>Key numbers:</b> 
7 EC2 c3.xlarge instances, 2 Digital Ocean instances
<b>Role/technologies:</b>
DevOps Consultant. Ubuntu 16.04, Git on Github, Codeship, Capistrano, Redis, Cloudflare (CDN, minification, DDoS protection), Datadog, Elastic Search, monit, Nginx, PostgreSQL, Vagrant, Ansible, Packer, Terraform, AWS (EC2, IAM, S3, VPC)
<b>Client:</b>
<a href="https://chic-by-choice.com/">Chic by Choice</a> - Fashion
<b>Timeline:</b>
August 2016 to March 2017

<h3>LTP Labs "deploying web apps and automated ELT systems"</h3>
<b>Context:</b>
LTP Labs aims to help their clients achieve sustainable and significant improvements in their performance through combining advanced analytics and business expertise. They were getting to the limits of an on premise Microsoft SQL database cluster and needed a solution that would scale, so after research I presented and setup an AWS Redshift cluster for them. Since then we've worked to create complex data pipelines using automation and cloud infrastructure.
<b>Highlights:</b>
- Assessed and recommended data warehouse technologies for big data that would allow for scalability and help migrating from an on premises SQL Server instance to AWS Redshift
- Setup recurring maintenance (vacuum and encoding) tasks on AWS ECS jobs for AWS Redshift data
- Helped to migrate the company's website from HTTP to HTTPS with a simultaneous upgrade of the server instance and placement behind a load balancer with zero downtime
- Setup a cluster for a Vue.js-frontend and Django-backend project backed by Redis (AWS ElasticCache) and Aurora MySQL (AWS RDS). Continuous Deployment was setup using Gitlab CI with Docker containers in AWS ECS
- Containerised complex ELT jobs created with Talend to make data flow from files in AWS S3 to AWS Redshift to Oracle in AWS RDS
- Setup the infrastructure for an operational planning application made with Django on top of an Oracle database. The setup used three environments (dev, staging and live) all continuously deployed using Gitlab CI to an AWS ECS cluster fronted by AWS ALBs and Nginx with a Uwsgi backend. The inputs came via SFTP, and then the data flowed to AWS S3, AWS Redshift, AWS RDS and a Django app. The app also talked to an analytics product in Microsoft Azure and an on-premises API behind a site-to-site VPN
<b>Key numbers:</b> 
2 AWS ECS clusters, 6 nodes dc2.large Redshift cluster, ELT job moves more than 50 million rows per day or 2.5 GB
<b>Role/technologies:</b>
DevOps Consultant. Ubuntu 16.04, Docker, Nginx, Gitlab Git+CI, AWS (ECS, Redshift, RDS (MySQL and Oracle), S3, Redis ElasticCache, ALB, VPC)
<b>Client:</b>
<a href="http://ltplabs.com/">LTP Labs</a> - Big Data Analytics
<b>Timeline:</b>
June 2017 to Present

<h3>WikiTribune "from PoC to Pilot in 2 languages"</h3>
<b>Context:</b>
WikiTribune is an inventive news platform which evolves journalism by bringing together a Wiki-style community and paid professional journalists. They contacted me via one of their WordPress consultancy providers to move from an infrastructure with little to no resiliency in AWS Lightsail into what is now an infrastructure composed of two AWS regions and languages with an entire Continous Delivery pipeline.
<b>Highlights:</b>
- Transformed a WordPress PoC infrastructure consisting of individual AWS Lightsail servers to an AWS scalable and resilient infrastructure using Terraform to do the provisioning, Ansible playbooks to configure the servers, and Packer to generate the Amazon Machine Images that feed the AWS Autoscaling Groups
- Replicated the work across three environments (dev, staging and live) and across two AWS Regions corresponding to two different user languages 
- Crafted the dev and staging setup to destroy every night and redeploy fresh every morning from the CI/CD pipelines in Gitlab CI
- Cloudflare was fronting the websites from a security point of view (DDoS protection, OWASP protection, Firewall), as well as from a performance point of view (CDN, asset minification, caching, etc.)
<b>Key numbers:</b> 
15 EC2 instances, about 20 deployments to one or more environments per day
<b>Role/technologies:</b>
DevOps Consultant. Ubuntu 16.04, Ansible, Packer, Terraform, Gitlab Git+CI, Docker, Cloudflare, AWS 2 regions (EC2, ECS, ASG, CloudTrail, Lightsail, S3, RDS, VPC, SNS), Nginx, PHP-FPM, Papertrail, Datadog
<b>Client:</b>
<a href="https://www.wikitribune.com/">WikiTribune</a> - News Agency
<b>Timeline:</b>
September 2017 to Present

<h2>Certifications</h2>

<ul>
	<li><a href="https://www.certmetrics.com/amazon/public/badge.aspx?i=9&t=c&d=2018-01-30&ci=AWS00277870">AWS Cloud Practitioner</a></li>
	<li><a href="https://www.certmetrics.com/amazon/public/badge.aspx?i=1&t=c&d=2018-01-30&ci=AWS00277870">AWS Certified Solutions Architect - Associate</a></li>
	<li><a href="https://www.certmetrics.com/amazon/public/badge.aspx?i=2&t=c&d=2018-03-06&ci=AWS00277870">AWS Certified Developer - Associate</a></li>
	<li><a href="https://www.certmetrics.com/amazon/public/badge.aspx?i=3&t=c&d=2018-03-06&ci=AWS00277870">AWS Certified SysOps Administrator - Associate</a></li>
</ul>
