data "aws_security_group" "acesso_ec2_sg" {
  filter {
    name   = "group-name"
    values = ["acesso-ec2-sg"]
  }
}