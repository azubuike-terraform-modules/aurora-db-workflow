module "dev-aurora-db" {
  source                  = "git@github.com:azubuike-terraform-modules/aurora-db.git"
  instance_class          = "db.r5.large"
  cluster_identifier      = "aurora-cluster-demo"
  engine                  = "aurora-mysql"
  engine_version          = "8.0.mysql_aurora.3.06.0"
  availability_zones      = ["us-east-1a", "us-east-1b", "us-east-1c"]
  database_name           = "mydb"
  master_username         = "admin"
  master_password         = "brukutu1234"
  backup_retention_period = 5
  db_count                = 1
  kms_key_id = "arn:aws:kms:us-east-1:443678878678:key/9e940d0b-8bfe-4cab-9ec3-076c99b1722b"
  vpc_security_group_ids = "sg-0c82fd5b97438e899"
  db_subnet_group_name = "aurora-subnets"
  db_tags = {
    tier = "Dev"
    group = "scheduled shutdown"
  }

}
