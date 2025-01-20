module "mysql_db" {
  source                  = "../modules-mysql"
  instance_identifier     = var.db_name
  engine_version          = var.engine_version
  instance_class          = var.instance_class
  allocated_storage       = var.allocated_storage
  backup_retention_period = var.backup_retention_period
  preferred_backup_window = var.preferred_backup_window
  apply_immediately       = var.apply_immediately
  storage_encrypted       = var.storage_encrypted
  kms_key_id              = var.kms_key_id
  master_username         = var.master_username
  master_password         = var.master_password
  tags                    = var.tags
  db_name                 = var.db_name
  db_subnet_group_name    = data.aws_db_subnet_group.mysql.name

  # Add these arguments
  vpc_id                  = var.vpc_id
  subnet_ids              = var.subnet_ids
}
