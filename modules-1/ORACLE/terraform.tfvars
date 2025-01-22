name                  = "example-rds-oracle"
engine_version        = "19.0.0.0.ru-2021-01.rur-2021-01.r1"
instance_class        = "db.m5.2xlarge"  # Updated to a supported instance class
allocated_storage     = 50              # Ensure within the supported range (10-65536 GB)
max_allocated_storage = 60
storage_type          = "gp2"
multi_az              = true

vpc_security_group_ids = ["sg-0a4ff24af49eaa4f0"]
publicly_accessible    = false
subnet_ids             = ["subnet-0ed80f22280cf60f6", "subnet-09a3bc20dc29357c0"]

master_username = "admin"
master_password = "complex-password"

backup_retention_period = 7
preferred_backup_window = "04:00-05:00"
maintenance_window      = "Mon:05:00-Mon:06:00"

enable_cloudwatch_logs_exports = ["alert", "audit", "listener", "trace"]

kms_key_id          = "arn:aws:kms:us-east-1:064137398917:key/052a53ca-2255-4e78-ae9a-7958dc74ed37"
storage_encrypted   = true

tags = {
  Environment = "production"
  Project     = "rds-oracle"
}

license_model = "bring-your-own-license"  # Required for Oracle with this configuration
