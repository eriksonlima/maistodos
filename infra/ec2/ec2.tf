resource "aws_instance" "maistodos_git_runner" {
  ami = "ami-0b3e6ce892a9ee4e0"
  instance_type = "t2.micro"
  subnet_id = data.aws_subnet.pub1.id
  key_name = "erikson"
  
  tags = merge(
    local.tags,
    { Name = "${local.project_name}/${local.environment}/git-runner"}
  )
}