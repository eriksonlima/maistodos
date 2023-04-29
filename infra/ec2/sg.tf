resource "aws_security_group" "acesso_ec2_sg" {
  name      = "acesso-ec2-sg"
  vpc_id    = data.aws_vpc.main.id

  ingress {
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    cidr_blocks = ["189.124.240.126/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
}