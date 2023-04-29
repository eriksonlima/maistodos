data "aws_subnet" "pub1" {
  filter {
    name   = "tag:Name"
    values = ["metabase/default/public_1a"]
  }
}

data "aws_secutiry_group" "acesso_ec2_sg" {
  filter {
    name = "tag:Name"
    values = ["acesso-ec2-sg"]
  }
}