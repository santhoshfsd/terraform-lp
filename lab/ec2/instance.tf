
variable "amis" {
  type = map(string)
  default = {
    amazon_linux = "ami-05fa00d4c63e32376"
  }
}

variable "instanceType" {
  type = map(string)
  default = {
    MICRO = "t2.micro"
  }
}

provider "aws" {
  access_key = "AKIAVB3KJ46TCWFFIUYF"
  secret_key = "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"
  region = "us-east-1"
}

resource "aws_instance" "t2micro_instance" {
  ami = var.amis[amazon_linux]
  instance_type = var.instanceType[MICRO]
}