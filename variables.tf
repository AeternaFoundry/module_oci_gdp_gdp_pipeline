variable "gdp_gdp_pipelines" {
  description = <<EOT
Map of gdp_gdp_pipelines, attributes below
Required:
    - compartment_id
    - display_name
    - peering_region
    - pipeline_type
    - bucket_details (block):
        - bucket_type (required)
        - id (required)
        - name (required)
        - namespace (required)
Optional:
    - approval_key_vault_id
    - authorization_details
    - defined_tags
    - description
    - env
    - file_types
    - freeform_tags
    - is_approval_needed
    - is_chunking_enabled
    - is_file_override_in_destination_enabled
    - is_scanning_enabled
    - service_log_group_id
    - state
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id                          = string
    display_name                            = string
    peering_region                          = string
    pipeline_type                           = string
    approval_key_vault_id                   = optional(string)
    authorization_details                   = optional(string)
    defined_tags                            = optional(map(string))
    description                             = optional(string)
    env                                     = optional(string)
    file_types                              = optional(list(string))
    freeform_tags                           = optional(map(string))
    is_approval_needed                      = optional(bool)
    is_chunking_enabled                     = optional(bool)
    is_file_override_in_destination_enabled = optional(bool)
    is_scanning_enabled                     = optional(bool)
    service_log_group_id                    = optional(string)
    state                                   = optional(string)
    bucket_details = list(object({
      bucket_type = string
      id          = string
      name        = string
      namespace   = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.gdp_gdp_pipelines : (
        length(v.bucket_details) >= 1
      )
    ])
    error_message = "Each bucket_details list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.gdp_gdp_pipelines : (
        v.state == null || (contains([for v in ["INACTIVE", "ACTIVE"] : lower(v)], lower(v.state)))
      )
    ])
    error_message = "must be one of: \"INACTIVE\", \"ACTIVE\""
  }
}

