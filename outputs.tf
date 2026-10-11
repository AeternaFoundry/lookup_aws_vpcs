output "vpcs_lookup_id" {
  description = "Map of id values across all vpcs_lookup, keyed the same as var.vpcs_lookup"
  value       = { for k, v in data.aws_vpcs.vpcs_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "vpcs_lookup_filter" {
  description = "Map of filter values across all vpcs_lookup, keyed the same as var.vpcs_lookup"
  value       = { for k, v in data.aws_vpcs.vpcs_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "vpcs_lookup_ids" {
  description = "Map of ids values across all vpcs_lookup, keyed the same as var.vpcs_lookup"
  value       = { for k, v in data.aws_vpcs.vpcs_lookup : k => v.ids if v.ids != null && length(v.ids) > 0 }
}
output "vpcs_lookup_region" {
  description = "Map of region values across all vpcs_lookup, keyed the same as var.vpcs_lookup"
  value       = { for k, v in data.aws_vpcs.vpcs_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "vpcs_lookup_tags" {
  description = "Map of tags values across all vpcs_lookup, keyed the same as var.vpcs_lookup"
  value       = { for k, v in data.aws_vpcs.vpcs_lookup : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

