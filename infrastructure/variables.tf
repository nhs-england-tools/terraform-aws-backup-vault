variable "org_id" {
  description = "The ID associated with your organization in AWS Organizations"
  type        = string
  default     = ""
}

variable "backup_account_id" {
  description = "The 12-digit AWS account ID for the central backup account"
  type        = string
  default     = ""
  validation {
    condition     = can(regex("^\\d{12}$", var.backup_account_id))
    error_message = "String must be a 12-digit number."
  }
}

variable "target_account_id" {
  description = "The 12-digit AWS account ID for your member account"
  type        = string
  default     = ""
  validation {
    condition     = can(regex("^\\d{12}$", var.target_account_id))
    error_message = "String must be a 12-digit number."
  }
}
