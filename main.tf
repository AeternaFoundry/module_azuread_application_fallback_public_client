resource "azuread_application_fallback_public_client" "application_fallback_public_clients" {
  for_each = var.application_fallback_public_clients

  application_id = each.value.application_id
  enabled        = each.value.enabled

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
    }
  }
}

