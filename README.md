# csv-driven-terraform-automation
Developed a CSV-driven Infrastructure Provisioning Framework using Terraform Modules, PowerShell Automation, Azure DevOps Classic Pipelines, and Azure Service Principals to dynamically deploy Azure Resources from structured input files.



csv-driven-terraform-automation
│
├── Modules
│   ├── resource-group
│   │    ├── main.tf
│   │    ├── variables.tf
│   │    
│   │
│   └── storage-account
│        ├── main.tf
│        ├── variables.tf
│        
│
├── Scripts
│   └── csv-to-tfvars.ps1
│
├── Input
│   └── infra.csv
│
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
├── backend.tf
├── terraform.tfvars
│
└── README.md