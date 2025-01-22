resource "aws_db_instance" "standalone_postgres" {
  identifier                  = var.instance_identifier
  engine                      = "postgres"
  engine_version              = var.engine_version
  instance_class              = var.instance_class
  db_subnet_group_name        = data.aws_db_subnet_group.postgres.name
  vpc_security_group_ids      = [data.aws_security_group.postgres.id]
  allocated_storage           = var.allocated_storage
  backup_retention_period     = var.backup_retention_period
  apply_immediately           = var.apply_immediately
  storage_encrypted           = var.storage_encrypted
  kms_key_id                  = var.kms_key_id
  username                    = var.master_username
  password                    = var.master_password
#  name                        = var.database_name  # Add this line for database name
  tags                        = var.tags
  skip_final_snapshot         = false
  final_snapshot_identifier   = "${var.instance_identifier}-final-snapshot"
}
