variable "opsi_operations_insights_warehouse_users" {
  description = <<EOT
Map of opsi_operations_insights_warehouse_users, attributes below
Required:
    - compartment_id
    - connection_password
    - is_awr_data_access
    - name
    - operations_insights_warehouse_id
Optional:
    - defined_tags
    - freeform_tags
    - is_em_data_access
    - is_opsi_data_access
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id                   = string
    connection_password              = string
    is_awr_data_access               = bool
    name                             = string
    operations_insights_warehouse_id = string
    defined_tags                     = optional(map(string))
    freeform_tags                    = optional(map(string))
    is_em_data_access                = optional(bool)
    is_opsi_data_access              = optional(bool)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

