module "standalone_postgres" {
  source               = "../modules-postgres-aurora"
  instance_identifier  = var.database_name
  master_username      = var.master_username
  master_password      = var.master_password
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  vpc_id               = var.vpc_id
  subnet_ids           = var.subnet_ids
  allowed_cidr_blocks  = var.allowed_cidr_blocks
  kms_key_id           = var.kms_key_id
  allocated_storage    = var.allocated_storage
  backup_retention_period = var.backup_retention_period
  preferred_backup_window  = var.preferred_backup_window
  storage_encrypted    = var.storage_encrypted
  apply_immediately    = var.apply_immediately
  tags = {
    Name        = local.name
    Team        = local.team
    Environment = local.environment
  }
  db_subnet_group_name = data.aws_db_subnet_group.postgres.name
}
