resource "aws_db_instance" "rds_oracle" {
  identifier              = var.name
  engine                  = "oracle-se2"
  engine_version          = var.engine_version
  instance_class          = var.instance_class
  allocated_storage       = var.allocated_storage
  max_allocated_storage   = var.max_allocated_storage
  storage_type            = var.storage_type
  multi_az                = var.multi_az
  publicly_accessible     = var.publicly_accessible
  vpc_security_group_ids  = [data.aws_security_group.oracle.id]
  db_subnet_group_name    = data.aws_db_subnet_group.oracle.name
  username                = var.master_username
  password                = var.master_password
  backup_retention_period = var.backup_retention_period
  maintenance_window      = var.maintenance_window
  enabled_cloudwatch_logs_exports = var.enable_cloudwatch_logs_exports
  storage_encrypted       = var.storage_encrypted
  kms_key_id              = var.kms_key_id
  license_model           = var.license_model  # Add this line
  tags                    = var.tags
  skip_final_snapshot         = false
  final_snapshot_identifier   = "${var.instance_identifier}-final-snapshot"
}
