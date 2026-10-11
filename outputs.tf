output "gdp_gdp_pipelines_id" {
  description = "Map of id values across all gdp_gdp_pipelines, keyed the same as var.gdp_gdp_pipelines except keys with no id are omitted"
  value       = { for k, v in oci_gdp_gdp_pipeline.gdp_gdp_pipelines : k => v.id if v.id != null && length(v.id) > 0 }
}
output "gdp_gdp_pipelines_approval_key_vault_id" {
  description = "Map of approval_key_vault_id values across all gdp_gdp_pipelines, keyed the same as var.gdp_gdp_pipelines except keys with no approval_key_vault_id are omitted"
  value       = { for k, v in oci_gdp_gdp_pipeline.gdp_gdp_pipelines : k => v.approval_key_vault_id if v.approval_key_vault_id != null && length(v.approval_key_vault_id) > 0 }
}
output "gdp_gdp_pipelines_authorization_details" {
  description = "Map of authorization_details values across all gdp_gdp_pipelines, keyed the same as var.gdp_gdp_pipelines except keys with no authorization_details are omitted"
  value       = { for k, v in oci_gdp_gdp_pipeline.gdp_gdp_pipelines : k => v.authorization_details if v.authorization_details != null && length(v.authorization_details) > 0 }
}
output "gdp_gdp_pipelines_bucket_details" {
  description = "Map of bucket_details values across all gdp_gdp_pipelines, keyed the same as var.gdp_gdp_pipelines except keys with no bucket_details are omitted"
  value       = { for k, v in oci_gdp_gdp_pipeline.gdp_gdp_pipelines : k => v.bucket_details if v.bucket_details != null && length(v.bucket_details) > 0 }
}
output "gdp_gdp_pipelines_compartment_id" {
  description = "Map of compartment_id values across all gdp_gdp_pipelines, keyed the same as var.gdp_gdp_pipelines except keys with no compartment_id are omitted"
  value       = { for k, v in oci_gdp_gdp_pipeline.gdp_gdp_pipelines : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "gdp_gdp_pipelines_defined_tags" {
  description = "Map of defined_tags values across all gdp_gdp_pipelines, keyed the same as var.gdp_gdp_pipelines except keys with no defined_tags are omitted"
  value       = { for k, v in oci_gdp_gdp_pipeline.gdp_gdp_pipelines : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "gdp_gdp_pipelines_description" {
  description = "Map of description values across all gdp_gdp_pipelines, keyed the same as var.gdp_gdp_pipelines except keys with no description are omitted"
  value       = { for k, v in oci_gdp_gdp_pipeline.gdp_gdp_pipelines : k => v.description if v.description != null && length(v.description) > 0 }
}
output "gdp_gdp_pipelines_display_name" {
  description = "Map of display_name values across all gdp_gdp_pipelines, keyed the same as var.gdp_gdp_pipelines except keys with no display_name are omitted"
  value       = { for k, v in oci_gdp_gdp_pipeline.gdp_gdp_pipelines : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "gdp_gdp_pipelines_env" {
  description = "Map of env values across all gdp_gdp_pipelines, keyed the same as var.gdp_gdp_pipelines except keys with no env are omitted"
  value       = { for k, v in oci_gdp_gdp_pipeline.gdp_gdp_pipelines : k => v.env if v.env != null && length(v.env) > 0 }
}
output "gdp_gdp_pipelines_file_types" {
  description = "Map of file_types values across all gdp_gdp_pipelines, keyed the same as var.gdp_gdp_pipelines except keys with no file_types are omitted"
  value       = { for k, v in oci_gdp_gdp_pipeline.gdp_gdp_pipelines : k => v.file_types if v.file_types != null && length(v.file_types) > 0 }
}
output "gdp_gdp_pipelines_freeform_tags" {
  description = "Map of freeform_tags values across all gdp_gdp_pipelines, keyed the same as var.gdp_gdp_pipelines except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_gdp_gdp_pipeline.gdp_gdp_pipelines : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "gdp_gdp_pipelines_is_approval_needed" {
  description = "Map of is_approval_needed values across all gdp_gdp_pipelines, keyed the same as var.gdp_gdp_pipelines except keys with no is_approval_needed are omitted"
  value       = { for k, v in oci_gdp_gdp_pipeline.gdp_gdp_pipelines : k => v.is_approval_needed if v.is_approval_needed != null }
}
output "gdp_gdp_pipelines_is_chunking_enabled" {
  description = "Map of is_chunking_enabled values across all gdp_gdp_pipelines, keyed the same as var.gdp_gdp_pipelines except keys with no is_chunking_enabled are omitted"
  value       = { for k, v in oci_gdp_gdp_pipeline.gdp_gdp_pipelines : k => v.is_chunking_enabled if v.is_chunking_enabled != null }
}
output "gdp_gdp_pipelines_is_file_override_in_destination_enabled" {
  description = "Map of is_file_override_in_destination_enabled values across all gdp_gdp_pipelines, keyed the same as var.gdp_gdp_pipelines except keys with no is_file_override_in_destination_enabled are omitted"
  value       = { for k, v in oci_gdp_gdp_pipeline.gdp_gdp_pipelines : k => v.is_file_override_in_destination_enabled if v.is_file_override_in_destination_enabled != null }
}
output "gdp_gdp_pipelines_is_scanning_enabled" {
  description = "Map of is_scanning_enabled values across all gdp_gdp_pipelines, keyed the same as var.gdp_gdp_pipelines except keys with no is_scanning_enabled are omitted"
  value       = { for k, v in oci_gdp_gdp_pipeline.gdp_gdp_pipelines : k => v.is_scanning_enabled if v.is_scanning_enabled != null }
}
output "gdp_gdp_pipelines_lifecycle_details" {
  description = "Map of lifecycle_details values across all gdp_gdp_pipelines, keyed the same as var.gdp_gdp_pipelines except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_gdp_gdp_pipeline.gdp_gdp_pipelines : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "gdp_gdp_pipelines_peered_gdp_pipeline_id" {
  description = "Map of peered_gdp_pipeline_id values across all gdp_gdp_pipelines, keyed the same as var.gdp_gdp_pipelines except keys with no peered_gdp_pipeline_id are omitted"
  value       = { for k, v in oci_gdp_gdp_pipeline.gdp_gdp_pipelines : k => v.peered_gdp_pipeline_id if v.peered_gdp_pipeline_id != null && length(v.peered_gdp_pipeline_id) > 0 }
}
output "gdp_gdp_pipelines_peering_region" {
  description = "Map of peering_region values across all gdp_gdp_pipelines, keyed the same as var.gdp_gdp_pipelines except keys with no peering_region are omitted"
  value       = { for k, v in oci_gdp_gdp_pipeline.gdp_gdp_pipelines : k => v.peering_region if v.peering_region != null && length(v.peering_region) > 0 }
}
output "gdp_gdp_pipelines_pipeline_type" {
  description = "Map of pipeline_type values across all gdp_gdp_pipelines, keyed the same as var.gdp_gdp_pipelines except keys with no pipeline_type are omitted"
  value       = { for k, v in oci_gdp_gdp_pipeline.gdp_gdp_pipelines : k => v.pipeline_type if v.pipeline_type != null && length(v.pipeline_type) > 0 }
}
output "gdp_gdp_pipelines_service_log_group_id" {
  description = "Map of service_log_group_id values across all gdp_gdp_pipelines, keyed the same as var.gdp_gdp_pipelines except keys with no service_log_group_id are omitted"
  value       = { for k, v in oci_gdp_gdp_pipeline.gdp_gdp_pipelines : k => v.service_log_group_id if v.service_log_group_id != null && length(v.service_log_group_id) > 0 }
}
output "gdp_gdp_pipelines_state" {
  description = "Map of state values across all gdp_gdp_pipelines, keyed the same as var.gdp_gdp_pipelines except keys with no state are omitted"
  value       = { for k, v in oci_gdp_gdp_pipeline.gdp_gdp_pipelines : k => v.state if v.state != null && length(v.state) > 0 }
}
output "gdp_gdp_pipelines_system_tags" {
  description = "Map of system_tags values across all gdp_gdp_pipelines, keyed the same as var.gdp_gdp_pipelines except keys with no system_tags are omitted"
  value       = { for k, v in oci_gdp_gdp_pipeline.gdp_gdp_pipelines : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "gdp_gdp_pipelines_time_created" {
  description = "Map of time_created values across all gdp_gdp_pipelines, keyed the same as var.gdp_gdp_pipelines except keys with no time_created are omitted"
  value       = { for k, v in oci_gdp_gdp_pipeline.gdp_gdp_pipelines : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "gdp_gdp_pipelines_time_updated" {
  description = "Map of time_updated values across all gdp_gdp_pipelines, keyed the same as var.gdp_gdp_pipelines except keys with no time_updated are omitted"
  value       = { for k, v in oci_gdp_gdp_pipeline.gdp_gdp_pipelines : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

