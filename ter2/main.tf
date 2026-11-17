resource "aws_instance" "ublockx" {
   ami           = var.ami_id
   instance_type = var.instance_type
   subnet_id = aws_subnet.main.id
   depends_on = [ aws_subnet.main ]
   tags = {
      Name = var.aws_instance_name
   }
  
}

resource "aws_instance" "tri_blockx" {
   ami ="var.ami_id"
   instance_type = var.instance_type
   subnet_id = aws_subnet.train.id
   depends_on = [ aws_subnet.train ]
  
}

resource "aws_subnet" "main" {
   vpc_id     = var.vpc_id
   cidr_block = var.subnet_cidr
   depends_on = [ aws_vpc.mynewvpc ]
   tags = {
      Name = "my-subnetx"
   }
  
}

resource "aws_vpc" "mynewvpc" {
   cidr_block =  "10.0.3.0/24"
   tags = {
      Name = "my-vpcx"
   }
  
}

resource "aws_subnet" "train" {
   vpc_id     = aws_vpc.mynewvpc.id
   cidr_block = "11.0.2.0/24"
   tags = {
      Name = "my-subnet-train"
   }
  
}


resource "aws_s3_bucket" "terrax" {
   bucket = var.bucket_name
  
   tags = {
      Name = "My bucketx"
   }
  
}

resource "aws_instance" "burstarx" {
   ami           = var.ami_id
   instance_type = var.env == "prod" ? "t3.large" : "t2.micro"
   
   subnet_id = aws_subnet.main.id
   depends_on = [ aws_subnet.main ]
   tags = {
      Name = var.aws_instance_name
   }
  
}

module "my_instance_from_module" {
   source = "./ec2_module"
   ami_exmaple = "ami_1112727272233"
   instance_type_eg = "t2.micro"
  
}

module "my_vpc_from_module" {
   source = "./vpc_module"
  
}


module "my_s3_from_module" {
   source = "./s3_module"
}