variable "instance_identifier" {
  description = "Identifier for the PostgreSQL instance"
  type        = string
}

variable "master_username" {
  description = "Master username for the database"
  type        = string
}

variable "master_password" {
  description = "Master password for the database"
  type        = string
  sensitive   = true
}

variable "engine_version" {
  description = "PostgreSQL engine version"
  type        = string
  default     = "13.7"
}

variable "instance_class" {
  description = "Instance class for PostgreSQL"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for the PostgreSQL instance"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the PostgreSQL subnet group"
  type        = list(string)
}

variable "allowed_cidr_blocks" {
  description = "List of CIDR blocks allowed to connect to the PostgreSQL instance"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "allocated_storage" {
  description = "Storage size in GB for the PostgreSQL instance"
  type        = number
  default     = 20
}

variable "backup_retention_period" {
  description = "Number of days to retain backups"
  type        = number
  default     = 7
}

variable "preferred_backup_window" {
  description = "Preferred backup window"
  type        = string
  default     = "02:00-03:00"
}

variable "storage_encrypted" {
  description = "Enable storage encryption"
  type        = bool
  default     = true
}

variable "apply_immediately" {
  description = "Apply changes immediately"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {}
}

variable "kms_key_id" {
  description = "KMS Key ID for encrypting the PostgreSQL database"
  type        = string
  default     = null
}

variable "db_subnet_group_name" {
  description = "Name of the DB subnet group"
  type        = string
}
