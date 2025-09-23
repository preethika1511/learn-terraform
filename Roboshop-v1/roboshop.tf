resource "aws_instance" "frontend" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0594c41d0ac49cf34"]

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z020706829X4VLGA6FBZ1"
  name    = "frontend-dev-online"
  type    = "A" #A – Routes traffic to an IPv4 address and some AWS resources
  ttl     = 30
  records = [aws_instance.frontend.private_ip] #resource reference
}

resource "aws_instance" "mongodb" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0594c41d0ac49cf34"]

  tags = {
    Name = "mongodb"
  }
}
resource "aws_instance" "catalogue" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0594c41d0ac49cf34"]

  tags = {
    Name = "catalogue"
  }
}
resource "aws_instance" "cart" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0594c41d0ac49cf34"]

  tags = {
    Name = "cart"
  }
}
resource "aws_instance" "redis" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0594c41d0ac49cf34"]

  tags = {
    Name = "redis"
  }
}
resource "aws_instance" "user" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0594c41d0ac49cf34"]

  tags = {
    Name = "user"
  }
}
resource "aws_instance" "mysql" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0594c41d0ac49cf34"]

  tags = {
    Name = "mysql"
  }
}
resource "aws_instance" "shipping" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0594c41d0ac49cf34"]

  tags = {
    Name = "shipping"
  }
}
resource "aws_instance" "rabbitmq" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0594c41d0ac49cf34"]

  tags = {
    Name = "rabbitmq"
  }
}
resource "aws_instance" "payment" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0594c41d0ac49cf34"]

  tags = {
    Name = "payment"
  }
}



