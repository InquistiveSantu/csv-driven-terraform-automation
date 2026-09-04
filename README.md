# 🚀 CSV-Driven Terraform Automation Framework

A DevOps automation project that provisions Azure infrastructure using Terraform Modules, PowerShell Automation, Azure DevOps Classic Pipelines, and Azure Service Principals.

The framework reads infrastructure requirements from a CSV file, dynamically generates a `terraform.tfvars` file, validates Terraform configurations, and deploys Azure resources through an automated Azure DevOps pipeline.

---

## 📌 Project Overview

Traditionally, Terraform variable files need to be manually updated whenever new infrastructure is required.

This project automates that process by:

- Reading infrastructure data from a CSV file
- Converting CSV data into Terraform variables using PowerShell
- Executing Terraform workflows through Azure DevOps
- Deploying Azure resources automatically

---

## 🏗️ Architecture

```text
Infrastructure CSV
        │
        ▼
PowerShell Automation
(csv-to-tfvars.ps1)
        │
        ▼
terraform.tfvars
        │
        ▼
Terraform Modules
        │
        ▼
Azure DevOps Pipeline
        │
        ▼
Terraform Plan & Apply
        │
        ▼
Azure Resources
```

---

## ⚙️ Technology Stack

- Terraform
- PowerShell
- Azure DevOps Classic Pipelines
- Azure Service Principal (App Registration)
- GitHub
- Azure Resource Manager (ARM)

---

## 📂 Repository Structure

```text
csv-driven-terraform-automation
│
├── Modules
│   ├── azurerm_resource_group
│   │   ├── main.tf
│   │   └── variables.tf
│   │
│   └── azurerm_stg
│       ├── main.tf
│       └── variables.tf
│
├── Scripts
│   └── csv-to-tfvars.ps1
│
├── Input
│   └── infra.csv
│
├── env
│   └── dev-env
│       ├── main.tf
│       ├── provider.tf
│       ├── variables.tf
│       └── terraform.tfvars
│
└── README.md
```

---

## 📄 Sample CSV Input

```csv
Type,Key,Name,Location,ResourceGroupName,AccountTier,AccountReplicationType

RG,rg1,rg001,westus,,,
RG,rg2,rg002,westus,,,

STG,stg1,pipstg001,westus,rg001,Standard,LRS
STG,stg2,pipstg002,westus,rg002,Standard,LRS
```

---

## 🔄 Automation Workflow

### Step 1
Update infrastructure requirements in:

```text
Input/infra.csv
```

### Step 2
Execute PowerShell automation:

```powershell
.\Scripts\csv-to-tfvars.ps1
```

### Step 3
Generate:

```text
terraform.tfvars
```

### Step 4
Azure DevOps Pipeline executes:

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
```

### Step 5
Azure resources are provisioned automatically.

---

## ☁️ Azure Resources Provisioned

### Resource Groups

- Azure Resource Group

### Storage

- Azure Storage Account

---

## 🔐 Authentication

Authentication is performed using:

- Azure Entra ID App Registration
- Service Principal
- Azure CLI Authentication

Pipeline secrets are stored securely using Azure DevOps Pipeline Variables.

---

## 🚀 Azure DevOps Pipeline Stages

```text
Generate terraform.tfvars
        │
        ▼
Terraform Init
        │
        ▼
Terraform Format Check
        │
        ▼
Terraform Validate
        │
        ▼
Azure Login
        │
        ▼
Terraform Plan
        │
        ▼
Terraform Apply
```

---

## 🎯 Key Features

- CSV-driven infrastructure deployment
- Reusable Terraform modules
- Automated tfvars generation
- Azure DevOps CI/CD integration
- Infrastructure as Code (IaC)
- Scalable and reusable design
- Self-hosted agent execution

---

## 📈 Key Learnings

- Terraform Module Design
- PowerShell Automation
- Azure DevOps Classic Pipelines
- Azure Service Principal Authentication
- Infrastructure as Code Best Practices
- Data-Driven Infrastructure Provisioning

---

## 👨‍💻 Author

Santu Paira

Aspiring DevOps & Cloud Engineer

Focused on Azure, Terraform, CI/CD, Automation, and Infrastructure as Code.