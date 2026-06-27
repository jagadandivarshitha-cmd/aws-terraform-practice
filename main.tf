terraform {
    required_providers {
        aws={
            source = "hashicorp/aws"
            version = "~> 5.0"
        }
    }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket"{
    bucket = var.bucket_name
    tags = {
        Environment = var.environment
    }
}

resource "aws_security_group" "my_sg" {
    name = "my-server-sg"
    description = "Security group for my first server"

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]     # allow ssh from anywhere
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"    # all traffic 
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_instance" "my_server"{
    ami = "ami-0521cb2d60cfbb1a6"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.my_sg.id]

    tags = {
        Name = "MyFirstServer"
        Environment = var.environment
    }
}