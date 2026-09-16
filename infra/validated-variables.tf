variable "project_id" {
  description = "Project id used for all resources."
  type        = string
  validation {
    condition     = can(regex("^[a-z][a-z0-9-]{4,28}[a-z0-9]$", var.project_id))
    error_message = "project_id must be 6-30 characters, start with a lowercase letter, contain only lowercase letters, digits, and hyphens, and cannot end with a hyphen."
  }
}

variable "region" {
  description = "Region used for all resources."
  type        = string
  validation {
    condition     = var.region != null && var.region != ""
    error_message = "region must not be empty."
  }
  validation {
    condition = contains([
      "europe-central2",
      "europe-north1",
      "europe-southwest1",
      "europe-west1",
      "europe-west2",
      "europe-west3",
      "europe-west4",
      "europe-west6",
      "europe-west8",
      "europe-west9",
      "europe-west10",
      "europe-west12"
    ], var.region)
    error_message = "region must be a supported European Google Cloud region."
  }
 }