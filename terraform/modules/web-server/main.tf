# create the ec2 instance
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
resource "aws_instance" "web" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = var.vpc_security_group_ids
  subnet_id              = var.subnet_id

  tags = {
    Name = "Web"
    project_name = var.project_name
  }
}