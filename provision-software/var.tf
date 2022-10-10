variable "AWS_ACCESS_KEY" {
  
}

variable "AWS_SECRET_KEY" {
  
}

variable "AWS_REGION" {
  type = string  
  default = "us-east-1"
}

variable "AMI_MAP" {
  type = map(string)
  default = {
    "us-east-1" = "ami-05fa00d4c63e32376"
    "us-west-1" = "value"
    "us-nortg-1" = "value"
  }
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}

variable "INSTANCE_USERNAME" {
  default = ""
}
