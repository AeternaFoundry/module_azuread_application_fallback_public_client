variable "application_fallback_public_clients" {
  description = <<EOT
Map of application_fallback_public_clients, attributes below
Required:
    - application_id
Optional:
    - enabled
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
EOT

  type = map(object({
    application_id = string
    enabled        = optional(bool)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.application_fallback_public_clients : (
        can(regex("^(/[^/]+/[^/]+)+$", v.application_id))
      )
    ])
    error_message = "must be a valid Azure resource ID"
  }
}

