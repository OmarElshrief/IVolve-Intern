
resource "aws_db_subnet_group" "main" {
  name       = "main"
  subnet_ids = aws_subnet.private[*].id
}

resource "aws_db_instance" "main" {
  identifier          = var.db_name
  engine              = "mysql"
  instance_class      = var.rds_instance_type
  allocated_storage   = 5
  username            = var.db_user
  password            = var.db_password
  db_subnet_group_name = aws_db_subnet_group.main.name
  publicly_accessible = false
  skip_final_snapshot = true
  vpc_security_group_ids = [aws_security_group.public_sg.id]
}

