variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-entra-windows-vm"
}

variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "eastus"
}

variable "vm_name" {
  description = "Name of the Windows VM"
  type        = string
  default     = "win-entra-vm"
}

variable "vm_size" {
  description = "Size of the VM"
  type        = string
  default     = "Standard_D2s_v3"
}

variable "admin_username" {
  description = "Local administrator username"
  type        = string
  default     = "localadmin"
}

variable "admin_password" {
  description = "Local administrator password"
  type        = string
  sensitive   = true
}

variable "windows_sku" {
  description = "Windows Server SKU"
  type        = string
  default     = "2022-datacenter-g2"
}

variable "allowed_rdp_source" {
  description = "Source IP address or CIDR range allowed for RDP access"
  type        = string
  default     = "*"
}

variable "vm_admin_users" {
  description = "List of Entra ID user/group object IDs for VM Administrator Login role"
  type        = list(string)
  default     = []
}

variable "vm_user_login_users" {
  description = "List of Entra ID user/group object IDs for VM User Login role"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default = {
    Environment = "Development"
    ManagedBy   = "Terraform"
  }
}
