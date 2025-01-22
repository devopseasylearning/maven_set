output "mysql_security_group_id" {
  value = aws_security_group.mysql.id
}

output "postgres_security_group_id" {
  value = aws_security_group.postgres.id
}

output "db2_security_group_id" {
  value = aws_security_group.db2.id
}

output "oracle_security_group_id" {
  value = aws_security_group.oracle.id
}
