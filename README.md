Terraform AWS EC2 Provisioning with Terraform Cloud (VCS-Driven)
📌 Project Overview

This project demonstrates how to provision and manage an AWS EC2 instance using Terraform, integrated with Terraform Cloud in a VCS-driven workflow (GitHub).

Infrastructure changes are automatically triggered by GitHub commits, planned and applied via Terraform Cloud workspaces.

🧰 Tech Stack

Terraform

AWS (EC2, Security Group, Elastic IP)

Terraform Cloud

GitHub (VCS integration)

VS Code

🏗️ Architecture

EC2 instance created in AWS

Security Group attached to EC2

Optional Elastic IP (EIP)

Terraform Cloud Workspace (VCS-connected)

GitHub repository triggers Terraform runs automatically

📁 Project Structure
.
├── main.tf          # EC2, Security Group, EIP resources
├── variables.tf     # Input variables
├── outputs.tf       # Public IP / Instance details
├── terraform.tf     # Terraform Cloud backend config
├── .gitignore       # Ignored files (.terraform, tfstate, etc.)
└── README.md

🔁 Workflow (VCS-Driven)

Code is pushed to GitHub

Terraform Cloud detects changes

Plan is automatically generated

Apply is run from Terraform Cloud UI

AWS infrastructure is created or updated

⚠️ No local terraform apply is required.

🔐 Authentication

Terraform Cloud authentication is handled via:

Terraform Cloud workspace (VCS-driven)

AWS credentials stored securely as workspace variables

No AWS secrets are stored in the repository

🌍 Outputs

After a successful apply, Terraform outputs:

EC2 Public IP

Instance ID

These can be used to:

SSH into the instance

Access services running on the EC2

🧹 Resource Cleanup

To avoid unnecessary AWS costs:

Infrastructure is destroyed using Terraform Cloud workspace

No manual AWS Console deletion required

📌 Key Learnings

Terraform Cloud VCS-driven workflow

Infrastructure as Code (IaC) best practices

Secure credential handling

AWS EC2 provisioning using Terraform

Workspace-based state management

Clean Git repository hygiene

🔮 Future Enhancements

Add Sentinel policies (cost & security guardrails)

Add Auto Scaling Group

Add Load Balancer

Add CI checks (terraform fmt / validate)

Dockerize application layer

Convert to multi-environment setup (dev/stage/prod)

👩‍💻 Author

Suhani Sharma
Cloud / DevOps Enthusiast
AWS Certified Solutions Architect – Associate
