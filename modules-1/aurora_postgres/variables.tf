variable "database_name" {
  description = "The unique identifier for the RDS instance."
  type        = string
}

variable "master_username" {
  description = "The username for the master DB user."
  type        = string
}

variable "master_password" {
  description = "The password for the master DB user."
  type        = string
}

variable "engine_version" {
  description = "The version of the PostgreSQL database engine."
  type        = string
}

variable "instance_class" {
  description = "The compute and memory capacity of the DB instance."
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC where the database will be deployed."
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs for the DB subnet group."
  type        = list(string)
}

variable "allowed_cidr_blocks" {
  description = "List of CIDR blocks allowed to access the database."
  type        = list(string)
}

variable "kms_key_id" {
  description = "The KMS key ID used for database encryption."
  type        = string
}

variable "allocated_storage" {
  description = "The amount of storage (in gigabytes) to allocate for the DB instance."
  type        = number
}

variable "backup_retention_period" {
  description = "The number of days to retain automated backups."
  type        = number
}

variable "preferred_backup_window" {
  description = "The daily time range during which automated backups are created."
  type        = string
}

variable "storage_encrypted" {
  description = "Specifies whether the DB instance is encrypted."
  type        = bool
}

variable "apply_immediately" {
  description = "Specifies whether changes should be applied immediately or during the next maintenance window."
  type        = bool
}

variable "tags" {
  description = "A map of tags to assign to the resources."
  type        = map(string)
}


variable "project_name" {
  description = "The name of the project."
  type        = string
}

variable "resource_type" {
  description = "The type of the resource."
  type        = string
}

variable "team_name" {
  description = "The name of the team."
  type        = string
}

variable "environment" {
  description = "The environment for the deployment."
  type        = string
}
