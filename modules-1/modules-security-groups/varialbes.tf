
variable "mysql_name" {
  description = "Name of the security group for MySQL"
  type        = string
}

variable "postgres_name" {
  description = "Name of the security group for PostgreSQL"
  type        = string
}

variable "db2_name" {
  description = "Name of the security group for DB2"
  type        = string
}

variable "oracle_name" {
  description = "Name of the security group for Oracle"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where the security groups will be created"
  type        = string
}

variable "cidr_blocks" {
  description = "List of CIDR blocks to allow inbound access"
  type        = list(string)
}
