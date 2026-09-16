resource "aws_vpc" "lab_vpc" {
  cidr_block = "10.50.0.0/16"

  tags = {
    Owner       = "Nandana"
    Environment = "Lab"
    CostCentre  = "Cyber"
  }
}

resource "aws_security_group" "web_sg" {
  name   = "nm-m1w4-web-sg"
  vpc_id = aws_vpc.lab_vpc.id

  ingress {
    description = "HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Owner       = "Nandana"
    Environment = "Lab"
    CostCentre  = "Cyber"
  }
}
