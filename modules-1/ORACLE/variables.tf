variable "name" {
  description = "The name of the RDS Oracle instance."
  type        = string
}

variable "engine_version" {
  description = "The version of the Oracle database engine."
  type        = string
  default     = "19.0.0.0.ru-2021-01.rur-2021-01.r1"
}

variable "instance_class" {
  description = "The instance class for the RDS Oracle instance."
  type        = string
  default     = "db.m6g.large"
}

variable "allocated_storage" {
  description = "The amount of initial storage allocated for the RDS instance."
  type        = number
  default     = 100
}

variable "max_allocated_storage" {
  description = "The maximum allocated storage for the RDS instance."
  type        = number
  default     = 200
}

variable "storage_type" {
  description = "The storage type to use (e.g., gp2, io1)."
  type        = string
  default     = "gp2"
}

variable "multi_az" {
  description = "Enable Multi-AZ deployment."
  type        = bool
  default     = true
}

variable "vpc_security_group_ids" {
  description = "List of VPC security group IDs to associate with the RDS instance."
  type        = list(string)
}

variable "subnet_ids" {
  description = "List of subnet IDs to associate with the RDS instance."
  type        = list(string)
}

variable "publicly_accessible" {
  description = "Whether the RDS instance is publicly accessible."
  type        = bool
  default     = false
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
  description = "The preferred backup window."
  type        = string
  default     = "04:00-05:00"
}

variable "maintenance_window" {
  description = "The preferred maintenance window."
  type        = string
  default     = "Mon:05:00-Mon:06:00"
}

variable "enable_cloudwatch_logs_exports" {
  description = "List of log types to enable for CloudWatch Logs export."
  type        = list(string)
  default     = ["alert", "audit", "listener", "trace"]
}

variable "kms_key_id" {
  description = "The ARN of the KMS key to use for encryption."
  type        = string
}

variable "storage_encrypted" {
  description = "Whether to enable storage encryption."
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags to associate with the RDS instance."
  type        = map(string)
  default = {
    Environment = "production"
    Project     = "rds-oracle"
  }
}
