output "application_fallback_public_clients_id" {
  description = "Map of id values across all application_fallback_public_clients, keyed the same as var.application_fallback_public_clients"
  value       = { for k, v in azuread_application_fallback_public_client.application_fallback_public_clients : k => v.id if v.id != null && length(v.id) > 0 }
}
output "application_fallback_public_clients_application_id" {
  description = "Map of application_id values across all application_fallback_public_clients, keyed the same as var.application_fallback_public_clients"
  value       = { for k, v in azuread_application_fallback_public_client.application_fallback_public_clients : k => v.application_id if v.application_id != null && length(v.application_id) > 0 }
}
output "application_fallback_public_clients_enabled" {
  description = "Map of enabled values across all application_fallback_public_clients, keyed the same as var.application_fallback_public_clients"
  value       = { for k, v in azuread_application_fallback_public_client.application_fallback_public_clients : k => v.enabled if v.enabled != null }
}

