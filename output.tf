output "aurora_endpoint" {
  value = module.dev-aurora-db.aws_rds_cluster.default.endpoint
}