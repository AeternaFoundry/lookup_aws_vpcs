variable "vpcs_lookup" {
  description = <<EOT
Map of vpcs_lookup, attributes below
Optional:
    - region
    - tags
    - filter (block):
        - name (required)
        - values (required)
EOT

  type = map(object({
    region = optional(string)
    tags   = optional(map(string))
    filter = optional(list(object({
      name   = string
      values = set(string)
    })))
  }))
}

