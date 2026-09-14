# Azure Cloud Assignment Infrastructure

## Overview
This repository provisions an Azure environment using Terraform with a GitHub Actions pipeline.  
Resources include a Virtual Machine, networking components, and a storage account, all deployed into the resource group `rg-cloud-assignment`.

---

## Prerequisites
- Azure subscription with Contributor rights
- Terraform v1.5.0 or later
- Azure CLI installed and authenticated (`az login`)
- GitHub Actions runner configured with secrets for Azure authentication

---

## Authentication
Login to Azure and set your subscription:

bash

az login
az account set --subscription "<your-subscription-id>"


# Initialize Terraform backend
terraform init -reconfigure

# Plan deployment
terraform plan -out=tfplan

# Apply deployment
terraform apply -auto-approve tfplan

# Show outputs (VM public IP, storage account name)
terraform output

#Variables
The following variables are used in the configuration:

location: Azure region (default northeurope)

vm_size: VM SKU (e.g., Standard_D2_v3)

ssh_source_ip: Public IP allowed for SSH access

vm_admin_username: Admin username for the VM (default azureuser)

vm_admin_password: Admin password for the VM

storage_account_name: Name of the storage account

resource_group_name: Name of the resource group

vnet_name: Virtual Network name

vnet_address_space: Address space for the VNet

subnet_name: Subnet name

subnet_prefixes: Address prefix for the subnet

nsg_name: Network Security Group name

public_ip_name: Public IP resource name

nic_name: Network Interface name

vm_name: Virtual Machine name

#Cleanup

terraform destroy -auto-approve
