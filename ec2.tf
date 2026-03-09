resource "aws_instance" "web" {
  ami           = "ami-09256c524fab91d36" # Amazon Linux 2 AMI (HVM), SSD Volume Type
  instance_type = "t2.micro"
  key_name      = "chave-site-prod"
  vpc_security_group_ids = [aws_security_group.web-sg.id]
  iam_instance_profile = "ecr-ec2-role"

  tags = {
    Name = "website-server"
    Provisioned = "Terraform"
  }
}

# security group

resource "aws_security_group" "web-sg" {
  name        = "web-sg"
  vpc_id      = "vpc-08b811cee3bb6e956"

  tags = {
    Name = "web-sg"
    Provisioned = "Terraform"
  }
}

resource "aws_security_group_rule" "allow_ssh" {
  type = "ingress"
  security_group_id = aws_security_group.web-sg.id
  cidr_blocks = ["187.22.41.246/32"]
  from_port = 22
  to_port = 22
  protocol  = "tcp"
}

resource "aws_security_group_rule" "allow_http" {
  type = "ingress"
  security_group_id = aws_security_group.web-sg.id
  cidr_blocks = ["0.0.0.0/0"]
  from_port = 80
  to_port = 80
  protocol  = "tcp"
}

resource "aws_security_group_rule" "allow_https" {
  type = "ingress"
  security_group_id = aws_security_group.web-sg.id
  cidr_blocks = ["0.0.0.0/0"]
  from_port = 443
  to_port = 443
  protocol  = "tcp"
}

resource "aws_security_group_rule" "allow_all_outbound" {
  type = "egress"
  security_group_id = aws_security_group.web-sg.id
  from_port = 0
  to_port = 0
  cidr_blocks = ["0.0.0.0/0"]
  protocol  = "-1"
}

