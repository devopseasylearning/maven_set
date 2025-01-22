variable "name" {
  description = "The name of the RDS Oracle instance."
  type        = string
}

variable "engine_version" {
  description = "The version of the Oracle engine."
  type        = string
  default     = "19.0.0.0.ru-2021-01.rur-2021-01.r1"
}

variable "instance_class" {
  description = "The instance class of the RDS Oracle instance."
  type        = string
}

variable "allocated_storage" {
  description = "The allocated storage for the RDS instance (in GB)."
  type        = number
}

variable "max_allocated_storage" {
  description = "The maximum allocated storage for the RDS instance (in GB)."
  type        = number
}

variable "storage_type" {
  description = "The type of storage to use (e.g., gp2, io1)."
  type        = string
}

variable "multi_az" {
  description = "Specifies if the RDS instance is multi-AZ."
  type        = bool
}

variable "vpc_security_group_ids" {
  description = "The VPC security group IDs to associate with the RDS instance."
  type        = list(string)
}

variable "subnet_ids" {
  description = "The subnet IDs for the RDS instance."
  type        = list(string)
}

variable "publicly_accessible" {
  description = "Specifies whether the RDS instance is publicly accessible."
  type        = bool
}

variable "master_username" {
  description = "The master username for the RDS instance."
  type        = string
}

variable "master_password" {
  description = "The master password for the RDS instance."
  type        = string
  sensitive   = true
}

variable "backup_retention_period" {
  description = "The number of days to retain backups."
  type        = number
  default     = 7
}

variable "preferred_backup_window" {
  description = "The preferred backup window for the RDS instance."
  type        = string
}

variable "maintenance_window" {
  description = "The maintenance window for the RDS instance."
  type        = string
}

variable "enable_cloudwatch_logs_exports" {
  description = "List of log types to export to CloudWatch Logs."
  type        = list(string)
}

variable "kms_key_id" {
  description = "The KMS key ID to use for encryption."
  type        = string
}

variable "storage_encrypted" {
  description = "Specifies whether to enable storage encryption."
  type        = bool
}

variable "tags" {
  description = "A map of tags to assign to the resources."
  type        = map(string)
}

variable "license_model" {
  description = "The license model for the Oracle RDS instance."
  type        = string
  default     = "bring-your-own-license" 
}
variable "instance_identifier" {
  description = "Identifier for the oracle instance"
  type        = string
}
