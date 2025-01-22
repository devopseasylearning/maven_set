data "aws_db_subnet_group" "oracle" {
  name = "oracle-subnet-group"
}

data "aws_security_group" "oracle" {
  name = "RDS-oracle-sg"
}