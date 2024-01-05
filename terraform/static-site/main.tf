provider "aws" {
  region = var.region
  profile = var.profile
}

resource "aws_instance" "site" {
    ami = "ami-0c7217cdde317cfec"
    instance_type = "t2.large"
    key_name = "vockey"
    vpc_security_group_ids = ["sg-08b286e486218d6c0"]
    tags = {
        Name = var.name
        group = var.group
    }
}