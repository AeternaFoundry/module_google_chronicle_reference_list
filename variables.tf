variable "chronicle_reference_lists" {
  description = <<EOT
Map of chronicle_reference_lists, attributes below
Required:
    - description
    - instance
    - location
    - reference_list_id
    - syntax_type
    - entries (block):
        - value (required)
Optional:
    - project
    - scope_info (block):
        - reference_list_scope (optional, block):
            - scope_names (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    description       = string
    instance          = string
    location          = string
    reference_list_id = string
    syntax_type       = string
    project           = optional(string)
    entries = list(object({
      value = string
    }))
    scope_info = optional(object({
      reference_list_scope = optional(object({
        scope_names = optional(list(string))
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.chronicle_reference_lists : (
        length(v.entries) >= 1
      )
    ])
    error_message = "Each entries list must contain at least 1 items"
  }
}

