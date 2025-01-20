module "db_security_groups" {
  source        = "../modules-security-groups"
  mysql_name    = var.mysql_name
  postgres_name = var.postgres_name
  db2_name      = var.db2_name
  vpc_id        = var.vpc_id
  cidr_blocks   = var.cidr_blocks
}
