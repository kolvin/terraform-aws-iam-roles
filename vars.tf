variable "roles" {
  type = map(object({
    description = string       # Description of the role
    principals = list(object({ # Collection of princpals to be added as seperate statments
      entity         = string
      values         = list(string)
      assume_actions = list(string)
      conditions = list(object({
        test     = string
        variable = string
        values   = list(string)
      }))
    }))
    instance_profile_enabled = bool         # Create EC2 instance profile for this role
    policy_documents         = list(string) # List of JSON IAM policy documents
    managed_policy_arns      = list(string) # List of IAM policy arns
    max_session_duration     = number       # Maximum session duration (in seconds) that you want to set for the specified role
    path                     = string       # Identifiable path to the role
  }))
  description = "Collection of roles for this module to manage"
}