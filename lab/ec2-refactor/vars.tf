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