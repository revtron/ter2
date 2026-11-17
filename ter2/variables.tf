variable "aws_instance_name" {
  description = "newregionx"
  type        = string
  default     = "MyInstancex"
  
}

variable "instance_type" {
  description = "Type of instance to use"
  type        = string
  default     = "t2.micro"
  
}

variable "ami_id" {
  description = "AMI ID to use for the instance"
  type        = string
  default     = "ami-0c55b159cbfafe1f0"
  
}

variable "vpc_id" {
  description = "VPC ID where the subnet will be created"
  type        = string
  default     = "vpc-0bb1c79de3EXAMPLE"
  
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.30.0.0/24"
  
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "my-unique-bucket-namex"
  
}

variable "bucket_name2" {
  description = "Name of the second S3 bucket"
  type        = string
  default     = "my-unique-bucket-namey"
  
}

variable "my_team_key" {
  description = "Team specific key"
  type        = string
  default     = "default_team_keyx"
  
}

variable "env" {
  type    = string
  
  
}