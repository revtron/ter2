provider "aws" {
  region = "us-east-1"
  
}

resource "aws_instance" "servers" {
  for_each = toset(var.instance_names)
  ami          = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  tags = {
    Name = each.value
  }
  
}

resource "aws_ebs_volume" "app_volume" {
  count = 1 
  availability_zone = "us-east-1a"
  size = 10
  tags = {
    Name = "app_volume"
  }

  
}

resource "aws_volume_attachment" "aws_volume_attachment" {
  count = contains(var.instance_names, "app-server") ? 1 : 0 
  device_name = ("/dev/xvdf")
  volume_id = aws_ebs_volume.app_volume[0].id
  instance_id = aws_instance.servers["app-server"].id
  
}