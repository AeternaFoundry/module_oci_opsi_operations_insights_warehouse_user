resource "oci_opsi_operations_insights_warehouse_user" "opsi_operations_insights_warehouse_users" {
  for_each = var.opsi_operations_insights_warehouse_users

  compartment_id                   = each.value.compartment_id
  connection_password              = each.value.connection_password
  is_awr_data_access               = each.value.is_awr_data_access
  name                             = each.value.name
  operations_insights_warehouse_id = each.value.operations_insights_warehouse_id
  defined_tags                     = each.value.defined_tags
  freeform_tags                    = each.value.freeform_tags
  is_em_data_access                = each.value.is_em_data_access
  is_opsi_data_access              = each.value.is_opsi_data_access

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

