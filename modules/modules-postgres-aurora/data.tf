data "aws_db_subnet_group" "postgres" {
  name = "aurora-subnet-group"
}

data "aws_security_group" "postgres" {
  name = "RDS-postgres-sg" # Name of the security group
}

output "postgres_sg_id" {
  value = data.aws_security_group.postgres.id
}