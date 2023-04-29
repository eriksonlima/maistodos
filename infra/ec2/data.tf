data "aws_subnet" "pub1" {
  filter {
    name   = "tag:Name"
    values = ["metabase/default/public_1a"]
  }
}