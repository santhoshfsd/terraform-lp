resource "aws_instance" "t2micro_instance" {
  ami = "${lookup(var.AMI_MAP, var.AWS_REGION)}"
  instance_type = var.instanceType[MICRO]
}