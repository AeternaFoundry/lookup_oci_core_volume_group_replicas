variable "core_volume_group_replicas_lookup" {
  description = <<EOT
Map of core_volume_group_replicas_lookup, attributes below
Required:
    - availability_domain
    - compartment_id
Optional:
    - display_name
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    availability_domain = string
    compartment_id      = string
    display_name        = optional(string)
    state               = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

