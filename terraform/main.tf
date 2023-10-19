provider "aws" {
region = "ap-southeast-2"
access_key = "AKIAXFOFGNIUJCI46XON"
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
