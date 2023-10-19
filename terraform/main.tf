provider "aws" {
region = "us-east-1"
access_key = "AKIAXFOFGNIUFQGWP7N2"
secret_key = "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"
}
resource "aws_instance" "key" {
ami = "ami-023e1b810cda5ce69"
instance_type = "t2.micro"
key_name = "oct19"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags= {
name = "auto-instance"
}
}
