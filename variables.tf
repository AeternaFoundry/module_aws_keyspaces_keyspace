variable "keyspaces_keyspaces" {
  description = <<EOT
Map of keyspaces_keyspaces, attributes below
Required:
    - name
Optional:
    - region
    - tags
    - tags_all
    - replication_specification (block):
        - region_list (optional)
        - replication_strategy (optional)
EOT

  type = map(object({
    name     = string
    region   = optional(string)
    tags     = optional(map(string))
    tags_all = optional(map(string))
    replication_specification = optional(object({
      region_list          = optional(set(string))
      replication_strategy = optional(string)
    }))
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

