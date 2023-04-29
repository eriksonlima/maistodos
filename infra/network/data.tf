data "aws_security_group" "acesso_ec2_sg" {
  filter {
    name   = "tag:Name"
    values = ["acesso-eks-ec2"]
  }
}