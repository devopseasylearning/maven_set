output "rds_instance_id" {
  description = "The ID of the RDS instance"
  value       = aws_db_instance.mysql_instance.id
}

output "rds_instance_endpoint" {
  description = "The endpoint of the RDS instance"
  value       = aws_db_instance.mysql_instance.endpoint
}
