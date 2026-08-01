# AWS & Terraform Security Portfolio

This repository contains hands-on cloud security and Infrastructure as Code (IaC) labs completed using AWS and Terraform. The projects focus on cloud governance, identity and access management, cost controls, infrastructure deployment, and Terraform state management.

## Skills Demonstrated

- AWS Cloud Services
- Terraform Infrastructure as Code (IaC)
- AWS Budgets
- Amazon EC2
- Amazon S3
- IAM Policies and Roles
- Least Privilege Access Control
- Terraform State Management
- Resource Import and Recovery
- Cloud Security Best Practices
- Infrastructure Lifecycle Management

---

## S13 – AWS Budget Lab

### Objectives
- Deploy AWS Budgets using Terraform.
- Configure budget notifications and spending alerts.
- Verify budget controls within the AWS Console.

### Key Concepts
- Cost governance
- AWS Budgets
- Terraform deployment
- Budget notifications
- Cloud financial controls

### Deliverables
- `budget_plan.tf`

---

## S13 – EC2 Foundations

### Objectives
- Deploy an Ubuntu EC2 instance using Terraform.
- Identify a valid Ubuntu AMI.
- Create and destroy cloud infrastructure using Infrastructure as Code.

### Key Concepts
- Amazon EC2
- Terraform resources
- Infrastructure deployment
- Resource lifecycle management

### Deliverables
- `ec2_foundations.tf`

---

## S14 – IAM Surgery

### Objectives
- Remediate an overly permissive IAM policy.
- Apply the Principle of Least Privilege.
- Restrict S3 access to a specific finance bucket.

### Key Concepts
- IAM Users
- IAM Policies
- Least Privilege
- S3 Security
- Access Control

### Actions Performed
- Restricted permissions to:
  - `s3:GetObject`
  - `s3:ListBucket`
- Scoped permissions to a specific bucket and its objects.
- Verified policy restrictions in the AWS Console.

### Deliverables
- `iam_surgery.tf`

---

## S15 – Terraform State Recovery

### Objectives
- Understand Terraform state management.
- Simulate state loss.
- Recover existing infrastructure through Terraform imports.

### Key Concepts
- Terraform State Files
- Disaster Recovery
- Resource Import
- State Reconstruction
- Infrastructure Management

### Actions Performed
- Deployed AWS infrastructure.
- Deleted the Terraform state file.
- Imported existing AWS resources back into Terraform.
- Validated state recovery using Terraform Plan.
- Destroyed resources after successful recovery.

### Deliverables
- `terraform_state_recovery.tf`

---

## TLAB5 – Budgeted Identity

### Objectives
- Deploy secure AWS infrastructure using Terraform.
- Implement cloud cost controls through AWS Budgets.
- Apply least-privilege access using IAM Roles.
- Secure S3 access using scoped IAM permissions.

### Key Concepts
- AWS Budgets
- IAM Roles
- IAM Instance Profiles
- Amazon S3
- Amazon EC2
- Least Privilege
- Infrastructure as Code

### Resources Implemented
- AWS Budget
- S3 Bucket
- IAM Role
- IAM Policy
- IAM Instance Profile
- EC2 Instance

### Security Highlights
- Budget notifications configured for cost monitoring.
- Private S3 storage architecture.
- EC2 role-based access controls.
- Restricted S3 permissions using Terraform interpolation.
- Infrastructure deployed and destroyed through Terraform.

### Deliverables
- `tlab5_budgeted_identity.tf`

---

## Technologies Used

- AWS
- Terraform
- Linux
- Bash
- IAM
- EC2
- S3
- AWS Budgets

---

## Author

Franklin

Cloud Security and DevSecOps portfolio demonstrating practical experience in AWS infrastructure, Terraform automation, identity management, cloud governance, and infrastructure lifecycle management.
