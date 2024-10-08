# Create my AWS RDS instance

resource "aws_db_instance" "this" {
  allocated_storage                   = var.allocated_storage
  engine                              = var.rds_instance_engine
  instance_class                      = var.instance_class
  db_name                             = var.db_name
  username                            = var.db_username
  password                            = var.db_password
  identifier                          = "${var.prefix}-${var.identifier}-${var.suffix}"
  skip_final_snapshot                 = "true"
  publicly_accessible                 = "true"
  db_subnet_group_name                = var.create_custom_vpc ? var.db_subnet_group_name : null
  vpc_security_group_ids              = var.create_custom_vpc ? [aws_security_group.this[0].id] : []
  depends_on                          = [aws_secretsmanager_secret_version.this]
}