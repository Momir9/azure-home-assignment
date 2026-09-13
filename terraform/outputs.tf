# Public IP and the Storage name

output "vm_public_ip" {
  value = azurerm_public_ip.vm_public.ip_address
}

output "storage_account_name" {
  value = azurerm_storage_account.storage.name
}
