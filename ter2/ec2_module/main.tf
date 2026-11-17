resource "aws_instance" "ec2_module1" {
   ami = var.ami_exmaple
   instance_type = var.instance_type_eg
  
}

variable "ami_exmaple" {
   type = string
  
}