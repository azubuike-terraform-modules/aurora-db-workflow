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
  tier = "Dev"
  group = "scheduled shutdown"
}
