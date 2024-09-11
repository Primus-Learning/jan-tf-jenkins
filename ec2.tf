resource "aws_instance" "backend" {
  ami           = var.backend_ami
  instance_type = var.backend_instance_type
  tags = {
    Env= var.env_name
    Team= var.team_name
  }
}
