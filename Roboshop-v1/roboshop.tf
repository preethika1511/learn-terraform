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
  records = [aws_instance.frontend.private_ip] #assigning private ip of ec2 to route53
}

resource "aws_instance" "mongodb" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0594c41d0ac49cf34"]

  tags = {
    Name = "mongodb"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z020706829X4VLGA6FBZ1"
  name    = "mongodb-dev-online"
  type    = "A" #A – Routes traffic to an IPv4 address and some AWS resources
  ttl     = 30
  records = [aws_instance.mongodb.private_ip] #assigning private ip of ec2 to route53
}


resource "aws_instance" "catalogue" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0594c41d0ac49cf34"]

  tags = {
    Name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z020706829X4VLGA6FBZ1"
  name    = "catalogue-dev-online"
  type    = "A" #A – Routes traffic to an IPv4 address and some AWS resources
  ttl     = 30
  records = [aws_instance.catalogue.private_ip] #assigning private ip of ec2 to route53
}


resource "aws_instance" "cart" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0594c41d0ac49cf34"]

  tags = {
    Name = "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z020706829X4VLGA6FBZ1"
  name    = "cart-dev-online"
  type    = "A" #A – Routes traffic to an IPv4 address and some AWS resources
  ttl     = 30
  records = [aws_instance.cart.private_ip] #assigning private ip of ec2 to route53
}

resource "aws_instance" "redis" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0594c41d0ac49cf34"]

  tags = {
    Name = "redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z020706829X4VLGA6FBZ1"
  name    = "redis-dev-online"
  type    = "A" #A – Routes traffic to an IPv4 address and some AWS resources
  ttl     = 30
  records = [aws_instance.redis.private_ip] #assigning private ip of ec2 to route53
}

resource "aws_instance" "user" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0594c41d0ac49cf34"]

  tags = {
    Name = "user"
  }
}

resource "aws_route53_record" "user" {
  zone_id = "Z020706829X4VLGA6FBZ1"
  name    = "user-dev-online"
  type    = "A" #A – Routes traffic to an IPv4 address and some AWS resources
  ttl     = 30
  records = [aws_instance.user.private_ip] #assigning private ip of ec2 to route53
}

resource "aws_instance" "mysql" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0594c41d0ac49cf34"]

  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z020706829X4VLGA6FBZ1"
  name    = "mysql-dev-online"
  type    = "A" #A – Routes traffic to an IPv4 address and some AWS resources
  ttl     = 30
  records = [aws_instance.mysql.private_ip] #assigning private ip of ec2 to route53
}

resource "aws_instance" "shipping" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0594c41d0ac49cf34"]

  tags = {
    Name = "shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z020706829X4VLGA6FBZ1"
  name    = "shipping-dev-online"
  type    = "A" #A – Routes traffic to an IPv4 address and some AWS resources
  ttl     = 30
  records = [aws_instance.shipping.private_ip] #assigning private ip of ec2 to route53
}


resource "aws_instance" "rabbitmq" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0594c41d0ac49cf34"]

  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z020706829X4VLGA6FBZ1"
  name    = "rabbitmq-dev-online"
  type    = "A" #A – Routes traffic to an IPv4 address and some AWS resources
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip] #assigning private ip of ec2 to route53
}

resource "aws_instance" "payment" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0594c41d0ac49cf34"]

  tags = {
    Name = "payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z020706829X4VLGA6FBZ1"
  name    = "payment-dev-online"
  type    = "A" #A – Routes traffic to an IPv4 address and some AWS resources
  ttl     = 30
  records = [aws_instance.payment.private_ip] #assigning private ip of ec2 to route53
}



