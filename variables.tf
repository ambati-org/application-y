variable "environment" {
  description = "Environment name (dev/test/prod)"
  type        = string
}

variable "location" {
  description = "Azure location"
  type        = string
  default     = "eastus"
}
