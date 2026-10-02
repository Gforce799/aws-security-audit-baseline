variable "aws_region" {
  description = "AWS region used for primary resources."
  type        = string
  default     = "us-east-1"
}

variable "name" {
  description = "Short workload name used for resource naming."
  type        = string
  default     = "security-audit-baseline"

  validation {
    condition     = can(regex("^[a-z0-9-]{3,32}$", var.name))
    error_message = "Use 3-32 lowercase letters, numbers, and hyphens."
  }
}

variable "environment" {
  description = "Deployment environment name."
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "test", "stage", "prod"], var.environment)
    error_message = "Environment must be dev, test, stage, or prod."
  }
}

variable "tags" {
  description = "Additional tags merged into all supported resources."
  type        = map(string)
  default     = {}
}

variable "organization_trail" {
  description = "Create CloudTrail as an organization trail. Requires delegated admin or management account permissions."
  type        = bool
  default     = false
}

variable "config_snapshot_delivery_frequency" {
  description = "AWS Config snapshot delivery frequency."
  type        = string
  default     = "TwentyFour_Hours"
}
