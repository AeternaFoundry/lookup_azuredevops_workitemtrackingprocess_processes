output "workitemtrackingprocess_processes_lookup_id" {
  description = "Map of id values across all workitemtrackingprocess_processes_lookup, keyed the same as var.workitemtrackingprocess_processes_lookup"
  value       = { for k, v in data.azuredevops_workitemtrackingprocess_processes.workitemtrackingprocess_processes_lookup : k => v.id }
}
output "workitemtrackingprocess_processes_lookup_expand" {
  description = "Map of expand values across all workitemtrackingprocess_processes_lookup, keyed the same as var.workitemtrackingprocess_processes_lookup"
  value       = { for k, v in data.azuredevops_workitemtrackingprocess_processes.workitemtrackingprocess_processes_lookup : k => v.expand }
}
output "workitemtrackingprocess_processes_lookup_processes" {
  description = "Map of processes values across all workitemtrackingprocess_processes_lookup, keyed the same as var.workitemtrackingprocess_processes_lookup"
  value       = { for k, v in data.azuredevops_workitemtrackingprocess_processes.workitemtrackingprocess_processes_lookup : k => v.processes }
}

