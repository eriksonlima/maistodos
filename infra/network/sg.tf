resource "aws_security_group" "acesso_eks_sg" {
  name      = "acesso-eks-sg"
  vpc_id    = aws_vpc.main.id

  ingress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    self = true
    security_groups = [self.id, data.security_groups.acesso_ec2_sg.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}