output "workitemtrackingprocess_processes_lookup_id" {
  description = "Map of id values across all workitemtrackingprocess_processes_lookup, keyed the same as var.workitemtrackingprocess_processes_lookup except keys with no id are omitted"
  value       = { for k, v in data.azuredevops_workitemtrackingprocess_processes.workitemtrackingprocess_processes_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workitemtrackingprocess_processes_lookup_expand" {
  description = "Map of expand values across all workitemtrackingprocess_processes_lookup, keyed the same as var.workitemtrackingprocess_processes_lookup except keys with no expand are omitted"
  value       = { for k, v in data.azuredevops_workitemtrackingprocess_processes.workitemtrackingprocess_processes_lookup : k => v.expand if v.expand != null && length(v.expand) > 0 }
}
output "workitemtrackingprocess_processes_lookup_processes" {
  description = "Map of processes values across all workitemtrackingprocess_processes_lookup, keyed the same as var.workitemtrackingprocess_processes_lookup except keys with no processes are omitted"
  value       = { for k, v in data.azuredevops_workitemtrackingprocess_processes.workitemtrackingprocess_processes_lookup : k => v.processes if v.processes != null && length(v.processes) > 0 }
}

