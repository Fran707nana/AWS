provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "tkh-state-bucket-f-g"
    key    = "global/s3/terraform.tfstate"
    region = "us-east-1"
  }
}

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }
}

resource "aws_instance" "state_target" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t3.micro"

  tags = {
    Name = "TKH-State-Tracking-Target"
  }
}
