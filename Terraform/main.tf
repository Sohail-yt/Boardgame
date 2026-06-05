resource "aws_instance" "roboshop" {
    ami = var.ami_id
    instance_type = var.instance_type
    #vpc_security_group_ids = [aws_security_group.by_terraform.id]

    tags = {
      Name = "roboshop"
    }
}

/*

resource "aws_security_group" "by_terraform" {

    name = "allowall"
    description = "creating for test purpose"

    ingress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]

    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["172.31.5.29/32"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
        Name = "by_terraform_tags"
        purpose = "demo"
    }
  
}
*/




