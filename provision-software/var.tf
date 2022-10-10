variable "AWS_ACCESS_KEY" { } 
variable "AWS_SECRET_KEY" { }

variable "AWS_REGION" {
  type = string  
  default = "us-east-1"
}

variable "AMI_MAP" {
  type = map(string)
  default = {
    "us-east-1" = "ami-08c40ec9ead489470"
    "us-west-1" = "value"
    "us-north-1" = "value"
  }
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "tf-ssh-key"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "tf-ssh-key.pub"
}

variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}
