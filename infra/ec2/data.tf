data "aws_subnet" "pub1" {
  filter {
    name   = "tag:Name"
    values = ["metabase/default/public_1a"]
  }
}

data "aws_vpc" "main" {
  filter {
    name = "tag:Name"
    values = ["metabase/default"]
  }
}

data "aws_security_group" "acesso_ec2_sg" {
  filter {
    name = "name"
    values = ["acesso-ec2-sg"]
  }
}