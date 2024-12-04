variable "ami_image_name" {

  default = "ami-0ae9642bc1885d7b5" #Choose a valid AMI image according to the region and operating system you wish to deploy

  type = string

  description = "This is a variable for AMI image"

}

variable "instance_type" {

  type = string

  description = "This is a variable for Instance type"

}

resource "aws_instance" "web_server" {

  ami = var.ami_image_name

  instance_type = var.instance_type

  tags = {
    "Name" = "gre-gen-webserver"
  }

}
