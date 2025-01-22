output "db_instance_id" {
  description = "The ID of the RDS instance."
  value       = aws_db_instance.rds_oracle.id
}

output "db_endpoint" {
  description = "The endpoint of the RDS instance."
  value       = aws_db_instance.rds_oracle.endpoint
}

output "db_subnet_group_name" {
  description = "The name of the DB subnet group."
  value       = data.aws_db_subnet_group.oracle.name  # Reference the data block here
}

output "oracle_sg_id" {
  value = data.aws_security_group.oracle.id
}

output "oracle_sg_name" {
  value = data.aws_security_group.oracle.name
}

output "aws_db_subnet_group" {
  value = data.aws_db_subnet_group.oracle.name  # Reference the data block here
}
