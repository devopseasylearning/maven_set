instance_identifier     = "my-mysql-db"
engine_version          = "8.4.3"
instance_class          = "db.t3.micro"
allocated_storage       = 20
backup_retention_period = 7
preferred_backup_window = "03:00-05:00"
apply_immediately       = true
storage_encrypted       = true
kms_key_id              = "arn:aws:kms:us-east-1:064137398917:key/052a53ca-2255-4e78-ae9a-7958dc74ed37"
master_username         = "admin"
master_password         = "password"
tags = {
  Environment = "Production"
  Project     = "MyProject"
}
db_name = "mydatabase"
vpc_id              = "vpc-02b1b6b060d55e248"
subnet_ids          = ["subnet-0ed80f22280cf60f6", "subnet-09a3bc20dc29357c0"]