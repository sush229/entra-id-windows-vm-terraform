output "resource_group_name" {
  description = "Name of the resource group"
  value       = azurerm_resource_group.main.name
}

output "vm_name" {
  description = "Name of the Windows VM"
  value       = azurerm_windows_virtual_machine.main.name
}

output "vm_id" {
  description = "ID of the Windows VM"
  value       = azurerm_windows_virtual_machine.main.id
}

output "public_ip_address" {
  description = "Public IP address of the VM"
  value       = azurerm_public_ip.main.ip_address
}

output "private_ip_address" {
  description = "Private IP address of the VM"
  value       = azurerm_network_interface.main.private_ip_address
}

output "entra_id_login_enabled" {
  description = "Indicates Entra ID login extension is installed"
  value       = true
}

output "rdp_connection_command" {
  description = "RDP connection info (use Entra ID credentials)"
  value       = "mstsc /v:${azurerm_public_ip.main.ip_address}"
}
