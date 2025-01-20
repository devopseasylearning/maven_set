data "aws_db_subnet_group" "mysql" {
  name = "mysql-subnet-group"
}
data "aws_security_group" "mysql" {
  name = "RDS-mysql-sg" # Name of the security group
}

output "mysql_sg_id" {
  value = data.aws_security_group.mysql.id
}