variable "workitemtrackingprocess_processes_lookup" {
  description = <<EOT
Map of workitemtrackingprocess_processes_lookup, attributes below
Optional:
    - expand
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    expand = optional(string)
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_processes_lookup : (
        v.expand == null || (contains(["none", "projects"], v.expand))
      )
    ])
    error_message = "must be one of: \"none\", \"projects\""
  }
}

