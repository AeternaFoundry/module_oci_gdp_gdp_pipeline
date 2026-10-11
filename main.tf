resource "oci_gdp_gdp_pipeline" "gdp_gdp_pipelines" {
  for_each = var.gdp_gdp_pipelines

  compartment_id                          = each.value.compartment_id
  display_name                            = each.value.display_name
  peering_region                          = each.value.peering_region
  pipeline_type                           = each.value.pipeline_type
  approval_key_vault_id                   = each.value.approval_key_vault_id
  authorization_details                   = each.value.authorization_details
  defined_tags                            = each.value.defined_tags
  description                             = each.value.description
  env                                     = each.value.env
  file_types                              = each.value.file_types
  freeform_tags                           = each.value.freeform_tags
  is_approval_needed                      = each.value.is_approval_needed
  is_chunking_enabled                     = each.value.is_chunking_enabled
  is_file_override_in_destination_enabled = each.value.is_file_override_in_destination_enabled
  is_scanning_enabled                     = each.value.is_scanning_enabled
  service_log_group_id                    = each.value.service_log_group_id
  state                                   = each.value.state

  dynamic "bucket_details" {
    for_each = each.value.bucket_details
    content {
      bucket_type = bucket_details.value.bucket_type
      id          = bucket_details.value.id
      name        = bucket_details.value.name
      namespace   = bucket_details.value.namespace
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

