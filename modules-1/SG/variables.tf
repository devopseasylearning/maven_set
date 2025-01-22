variable "mysql_name" {
  description = "Name of the security group for MySQL"
  type        = string
  default     = "mysql-sg" # Optional: default value
}

variable "postgres_name" {
  description = "Name of the security group for PostgreSQL"
  type        = string
  default     = "postgres-sg" # Optional: default value
}

variable "db2_name" {
  description = "Name of the security group for DB2"
  type        = string
  default     = "db2-sg" # Optional: default value
}

variable "oracle_name" {
  description = "Name of the security group for DB2"
  type        = string
  default     = "db2-sg" # Optional: default value
}

variable "vpc_id" {
  description = "VPC ID where the security groups will be created"
  type        = string
}

variable "cidr_blocks" {
  description = "List of CIDR blocks to allow inbound access"
  type        = list(string)
  default     = ["10.0.0.0/16"] # Optional: default value
}
