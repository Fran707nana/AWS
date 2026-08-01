# AWS Terraform Security Portfolio

## Portfolio Summary

This portfolio showcases the implementation of foundational AWS security, networking, monitoring, and Zero Trust concepts using Terraform. The labs were completed progressively, beginning with secure VPC routing and subnet segmentation, expanding into CloudWatch monitoring through VPC Flow Logs, and culminating in identity-based administration using AWS Systems Manager Session Manager.

The final T-LAB integrates all previously learned concepts into a single secure architecture featuring VPC networking, centralized monitoring, traffic visibility, and Zero Trust access controls. Together, these projects demonstrate practical experience with Infrastructure as Code (IaC), cloud security best practices, and AWS resource lifecycle management.

## Overall Skills Demonstrated

- Terraform
- Infrastructure as Code (IaC)
- Amazon VPC
- Public and Private Subnets
- Internet Gateways
- Route Tables and Route Associations
- Amazon EC2
- Security Groups
- AWS Identity and Access Management (IAM)
- IAM Roles
- IAM Policies
- IAM Instance Profiles
- AWS Systems Manager (SSM)
- Session Manager
- Amazon CloudWatch
- VPC Flow Logs
- Zero Trust Security
- Network Monitoring
- Cloud Security
- Least Privilege Access
- Resource Deployment and Destruction Lifecycle

---

# S16 – VPC Routing Security

## Summary

This lab focused on identifying and correcting a routing vulnerability within a Virtual Private Cloud (VPC). A private subnet was incorrectly associated with an internet-facing route table. The issue was remediated by creating a dedicated public subnet and ensuring that only public resources were provided Internet Gateway access.

## Objectives

- Deploy secure AWS networking infrastructure using Terraform.
- Identify a route table misconfiguration.
- Implement public and private subnet separation.
- Secure internet access through proper route table associations.

## Key Concepts

- Amazon VPC
- Public Subnets
- Private Subnets
- Route Tables
- Route Table Associations
- Internet Gateway
- Network Segmentation
- Infrastructure as Code

## Resources Implemented

- VPC
- Public Subnet
- Private Subnet
- Internet Gateway
- Route Table
- Route Table Association

## Security Highlights

- Removed internet exposure from the private subnet.
- Implemented proper network segmentation.
- Restricted Internet Gateway access to the public subnet.
- Applied secure routing principles.
- Infrastructure deployed and destroyed through Terraform.

## Deliverables

- `S16_vpc_architecture.tf`

---

# S17 – VPC Flow Log Monitoring

## Summary

This lab introduced network visibility through Amazon CloudWatch and VPC Flow Logs. Traffic data from the VPC was captured and delivered to centralized logging resources to improve monitoring, auditing, and troubleshooting capabilities.

## Objectives

- Enable VPC traffic monitoring using Terraform.
- Deploy CloudWatch logging resources.
- Capture VPC traffic using Flow Logs.
- Centralize network visibility and auditing.

## Key Concepts

- Amazon CloudWatch
- VPC Flow Logs
- IAM Roles
- IAM Policies
- Log Groups
- Network Monitoring
- Infrastructure as Code

## Resources Implemented

- CloudWatch Log Group
- IAM Role
- IAM Policy
- VPC Flow Log

## Security Highlights

- Enabled centralized traffic logging.
- Captured accepted and rejected network traffic.
- Improved network visibility and auditing capabilities.
- Implemented flow log monitoring through CloudWatch.
- Infrastructure deployed and destroyed through Terraform.

## Deliverables

- `S17_main.tf`

---

# S18 – Zero Trust Access

## Summary

This lab focused on implementing Zero Trust administration by eliminating traditional SSH access and replacing it with AWS Systems Manager Session Manager. Administrative access was established without inbound firewall rules or SSH keys, demonstrating identity-based cloud management.

## Objectives

- Deploy an EC2 instance using Terraform.
- Implement Session Manager access.
- Eliminate inbound SSH connectivity.
- Demonstrate identity-based administration.

## Key Concepts

- AWS Systems Manager
- Session Manager
- Amazon EC2
- IAM Roles
- IAM Instance Profiles
- Security Groups
- Zero Trust Security
- Infrastructure as Code

## Resources Implemented

- Security Group
- IAM Role
- IAM Policy Attachment
- IAM Instance Profile
- EC2 Instance

## Security Highlights

- Configured zero inbound security group rules.
- Eliminated SSH key requirements.
- Implemented identity-based access controls.
- Verified secure administrative access through Session Manager.
- Infrastructure deployed and destroyed through Terraform.

## Deliverables

- `S18_ssm_access.tf`

---

# TLAB6 – Monitored Fortress

## Summary

This capstone project combined networking, monitoring, and Zero Trust administration into a single Terraform deployment. The solution incorporated secure VPC design, VPC Flow Logs, CloudWatch monitoring, and Systems Manager access controls to create a layered security architecture demonstrating defense-in-depth principles.

## Objectives

- Deploy a complete AWS environment using Terraform.
- Implement secure VPC networking.
- Enable VPC Flow Log monitoring.
- Configure CloudWatch logging.
- Implement Zero Trust administration with Systems Manager.

## Key Concepts

- Amazon VPC
- Public Subnets
- Internet Gateway
- Route Tables
- CloudWatch
- VPC Flow Logs
- Amazon EC2
- Security Groups
- IAM Roles
- AWS Systems Manager
- Session Manager
- Zero Trust Security
- Infrastructure as Code

## Resources Implemented

- VPC
- Public Subnet
- Internet Gateway
- Route Table
- Route Table Association
- CloudWatch Log Group
- VPC Flow Log
- Security Group
- EC2 Instance

## Security Highlights

- Secure VPC routing architecture.
- VPC Flow Logs configured to capture all traffic.
- Centralized monitoring through CloudWatch.
- Zero inbound security group design.
- Session Manager-based administration.
- Defense-in-depth cloud security implementation.
- Infrastructure deployed and destroyed through Terraform.

## Deliverables

- `TLA6B_main.tf`

## Supporting Files

- `iam_provided.tf`
