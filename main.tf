resource "google_chronicle_reference_list" "chronicle_reference_lists" {
  for_each = var.chronicle_reference_lists

  description       = each.value.description
  instance          = each.value.instance
  location          = each.value.location
  reference_list_id = each.value.reference_list_id
  syntax_type       = each.value.syntax_type
  project           = each.value.project

  dynamic "entries" {
    for_each = each.value.entries
    content {
      value = entries.value.value
    }
  }

  dynamic "scope_info" {
    for_each = each.value.scope_info != null ? [each.value.scope_info] : []
    content {
      dynamic "reference_list_scope" {
        for_each = scope_info.value.reference_list_scope != null ? [scope_info.value.reference_list_scope] : []
        content {
          scope_names = reference_list_scope.value.scope_names
        }
      }
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

