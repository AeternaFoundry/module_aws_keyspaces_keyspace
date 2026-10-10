output "keyspaces_keyspaces_id" {
  description = "Map of id values across all keyspaces_keyspaces, keyed the same as var.keyspaces_keyspaces"
  value       = { for k, v in aws_keyspaces_keyspace.keyspaces_keyspaces : k => v.id if v.id != null && length(v.id) > 0 }
}
output "keyspaces_keyspaces_arn" {
  description = "Map of arn values across all keyspaces_keyspaces, keyed the same as var.keyspaces_keyspaces"
  value       = { for k, v in aws_keyspaces_keyspace.keyspaces_keyspaces : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "keyspaces_keyspaces_name" {
  description = "Map of name values across all keyspaces_keyspaces, keyed the same as var.keyspaces_keyspaces"
  value       = { for k, v in aws_keyspaces_keyspace.keyspaces_keyspaces : k => v.name if v.name != null && length(v.name) > 0 }
}
output "keyspaces_keyspaces_region" {
  description = "Map of region values across all keyspaces_keyspaces, keyed the same as var.keyspaces_keyspaces"
  value       = { for k, v in aws_keyspaces_keyspace.keyspaces_keyspaces : k => v.region if v.region != null && length(v.region) > 0 }
}
output "keyspaces_keyspaces_replication_specification" {
  description = "Map of replication_specification values across all keyspaces_keyspaces, keyed the same as var.keyspaces_keyspaces"
  value       = { for k, v in aws_keyspaces_keyspace.keyspaces_keyspaces : k => one(v.replication_specification) if v.replication_specification != null && length(v.replication_specification) > 0 }
}
output "keyspaces_keyspaces_tags" {
  description = "Map of tags values across all keyspaces_keyspaces, keyed the same as var.keyspaces_keyspaces"
  value       = { for k, v in aws_keyspaces_keyspace.keyspaces_keyspaces : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "keyspaces_keyspaces_tags_all" {
  description = "Map of tags_all values across all keyspaces_keyspaces, keyed the same as var.keyspaces_keyspaces"
  value       = { for k, v in aws_keyspaces_keyspace.keyspaces_keyspaces : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

