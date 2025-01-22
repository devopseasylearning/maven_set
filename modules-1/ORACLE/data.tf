data "aws_db_subnet_group" "oracle" {
  name = "oracle-subnet-group"
}
data "aws_security_group" "oracle" {
  name = "RDS-oracle-sg" 
}

output "oracle_sg_id" {
  value = data.aws_security_group.oracle.id
}

output "oracle_sg_name" {
  value = data.aws_security_group.oracle.name
}

output "aws_db_subnet_group" {
  value = data.aws_db_subnet_group.oracle.name
}
