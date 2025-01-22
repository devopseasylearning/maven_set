module "rds_oracle" {
  source = "../modules-oracle"

  # General settings
  name                  = var.name
  engine_version        = var.engine_version
  instance_class        = var.instance_class
  allocated_storage     = var.allocated_storage
  max_allocated_storage = var.max_allocated_storage
  storage_type          = var.storage_type
  multi_az              = var.multi_az

  # Networking
  vpc_security_group_ids = [data.aws_security_group.oracle.id]  # Fixed to be a list
  subnet_ids             = var.subnet_ids
  publicly_accessible    = var.publicly_accessible

  # Authentication & Access
  master_username = var.master_username
  master_password = var.master_password

  # Backup & Retention
  backup_retention_period = var.backup_retention_period
  preferred_backup_window = var.preferred_backup_window

  # Maintenance
  maintenance_window = var.maintenance_window

  # Monitoring
  enable_cloudwatch_logs_exports = var.enable_cloudwatch_logs_exports

  # Encryption
  kms_key_id          = var.kms_key_id
  storage_encrypted   = var.storage_encrypted

  # Tags
  tags = var.tags
}
