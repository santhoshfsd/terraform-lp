resource "aws_key_pair" "mykey" {
    key_name = "tfketpair"
    public_key = "${file("${var.PATH_TO_PUBLIC_KEY}")}"
}

resource "aws_instance" "example" {
    ami = "${lookup(var.AMI_MAP, var.AWS_REGION)}"
    instance_type = "t2.micro"
    key_name = "${aws_key_pair.mykey.key_name}"

    provisioner "file"  {
        source = "script.sh"
        destination = "/tmp/script.sh"
    }
    provisioner "remote-exec" {
        inline = [
            "chmod +x /tmp/script.sh",
            "sudo /tmp/script.sh"
        ]
    }

    connection {
        user= "${var.INSTANCE_USERNAME}"
        private_key=public_key = "${file("${var.PATH_TO_PRIVATE_KEY}")}"
    }
}