data "azuredevops_workitemtrackingprocess_processes" "workitemtrackingprocess_processes_lookup" {
  for_each = var.workitemtrackingprocess_processes_lookup

  expand = each.value.expand

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

