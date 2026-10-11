output "chronicle_reference_lists_id" {
  description = "Map of id values across all chronicle_reference_lists, keyed the same as var.chronicle_reference_lists except keys with no id are omitted"
  value       = { for k, v in google_chronicle_reference_list.chronicle_reference_lists : k => v.id if v.id != null && length(v.id) > 0 }
}
output "chronicle_reference_lists_description" {
  description = "Map of description values across all chronicle_reference_lists, keyed the same as var.chronicle_reference_lists except keys with no description are omitted"
  value       = { for k, v in google_chronicle_reference_list.chronicle_reference_lists : k => v.description if v.description != null && length(v.description) > 0 }
}
output "chronicle_reference_lists_display_name" {
  description = "Map of display_name values across all chronicle_reference_lists, keyed the same as var.chronicle_reference_lists except keys with no display_name are omitted"
  value       = { for k, v in google_chronicle_reference_list.chronicle_reference_lists : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "chronicle_reference_lists_entries" {
  description = "Map of entries values across all chronicle_reference_lists, keyed the same as var.chronicle_reference_lists except keys with no entries are omitted"
  value       = { for k, v in google_chronicle_reference_list.chronicle_reference_lists : k => v.entries if v.entries != null && length(v.entries) > 0 }
}
output "chronicle_reference_lists_instance" {
  description = "Map of instance values across all chronicle_reference_lists, keyed the same as var.chronicle_reference_lists except keys with no instance are omitted"
  value       = { for k, v in google_chronicle_reference_list.chronicle_reference_lists : k => v.instance if v.instance != null && length(v.instance) > 0 }
}
output "chronicle_reference_lists_location" {
  description = "Map of location values across all chronicle_reference_lists, keyed the same as var.chronicle_reference_lists except keys with no location are omitted"
  value       = { for k, v in google_chronicle_reference_list.chronicle_reference_lists : k => v.location if v.location != null && length(v.location) > 0 }
}
output "chronicle_reference_lists_name" {
  description = "Map of name values across all chronicle_reference_lists, keyed the same as var.chronicle_reference_lists except keys with no name are omitted"
  value       = { for k, v in google_chronicle_reference_list.chronicle_reference_lists : k => v.name if v.name != null && length(v.name) > 0 }
}
output "chronicle_reference_lists_project" {
  description = "Map of project values across all chronicle_reference_lists, keyed the same as var.chronicle_reference_lists except keys with no project are omitted"
  value       = { for k, v in google_chronicle_reference_list.chronicle_reference_lists : k => v.project if v.project != null && length(v.project) > 0 }
}
output "chronicle_reference_lists_reference_list_id" {
  description = "Map of reference_list_id values across all chronicle_reference_lists, keyed the same as var.chronicle_reference_lists except keys with no reference_list_id are omitted"
  value       = { for k, v in google_chronicle_reference_list.chronicle_reference_lists : k => v.reference_list_id if v.reference_list_id != null && length(v.reference_list_id) > 0 }
}
output "chronicle_reference_lists_revision_create_time" {
  description = "Map of revision_create_time values across all chronicle_reference_lists, keyed the same as var.chronicle_reference_lists except keys with no revision_create_time are omitted"
  value       = { for k, v in google_chronicle_reference_list.chronicle_reference_lists : k => v.revision_create_time if v.revision_create_time != null && length(v.revision_create_time) > 0 }
}
output "chronicle_reference_lists_rule_associations_count" {
  description = "Map of rule_associations_count values across all chronicle_reference_lists, keyed the same as var.chronicle_reference_lists except keys with no rule_associations_count are omitted"
  value       = { for k, v in google_chronicle_reference_list.chronicle_reference_lists : k => v.rule_associations_count if v.rule_associations_count != null }
}
output "chronicle_reference_lists_rules" {
  description = "Map of rules values across all chronicle_reference_lists, keyed the same as var.chronicle_reference_lists except keys with no rules are omitted"
  value       = { for k, v in google_chronicle_reference_list.chronicle_reference_lists : k => v.rules if v.rules != null && length(v.rules) > 0 }
}
output "chronicle_reference_lists_scope_info" {
  description = "Map of scope_info values across all chronicle_reference_lists, keyed the same as var.chronicle_reference_lists except keys with no scope_info are omitted"
  value       = { for k, v in google_chronicle_reference_list.chronicle_reference_lists : k => one(v.scope_info) if v.scope_info != null && length(v.scope_info) > 0 }
}
output "chronicle_reference_lists_syntax_type" {
  description = "Map of syntax_type values across all chronicle_reference_lists, keyed the same as var.chronicle_reference_lists except keys with no syntax_type are omitted"
  value       = { for k, v in google_chronicle_reference_list.chronicle_reference_lists : k => v.syntax_type if v.syntax_type != null && length(v.syntax_type) > 0 }
}

