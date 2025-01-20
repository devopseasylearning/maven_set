variable "instance_identifier" {
  description = "The unique identifier for the DB instance."
  type        = string
}

variable "engine_version" {
  description = "The version of the database engine."
  type        = string
}

variable "instance_class" {
  description = "The instance class for the DB."
  type        = string
}

variable "allocated_storage" {
  description = "The allocated storage in gigabytes."
  type        = number
}

variable "backup_retention_period" {
  description = "The number of days to retain backups."
  type        = number
}

variable "preferred_backup_window" {
  description = "The backup window for the DB."
  type        = string
  default     = "03:00-05:00"
}

variable "apply_immediately" {
  description = "Whether to apply changes immediately."
  type        = bool
  default     = true
}

variable "storage_encrypted" {
  description = "Whether to enable storage encryption."
  type        = bool
  default     = true
}

variable "kms_key_id" {
  description = "The ARN of the KMS key to encrypt the storage."
  type        = string
  default     = null
}

variable "master_username" {
  description = "The master username for the DB."
  type        = string
}

variable "master_password" {
  description = "The master password for the DB."
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

variable "db_name" {
  description = "The name of the initial database to create."
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC where the RDS instance will be deployed."
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs where the RDS instance will be deployed."
  type        = list(string)
}