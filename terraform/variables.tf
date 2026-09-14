variable "resource_group_name" {
  type        = string
  default     = "rg-cloud-assignment"
}

variable "location" {
  type        = string
  default     = "northeurope"
}

variable "vm_admin_username" {
  type        = string
  default     = "azureuser"
}

variable "vm_admin_password" {
  type        = string
  sensitive   = true
}

variable "vm_size" {
  type        = string
  default     = "Standard_B2ats_v2"
}

variable "ssh_source_ip" {
  description = "Public IP address allowed to SSH into the VM"
  type        = string
}

