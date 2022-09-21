provider "aws" {
  
}

variable "AWS_REGION" {
  type = string
  default = ""
}

variable "AMIS" {
  type = map(string)
  default = {
    "us-west-1" = "myami"
  }
}

resource "aws_instance" "micro_instance" {
  ami = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
}

resource "aws_instance" "macro_instance" {
  ami = var.amis[var.AWS_REGION]
  instance_type = "t2.small"
}
