terraform {
   backend "s3" {
      bucket = "terrazer"
      key="terraform.tfstate"
      region = "us-west-2"

     
   }
  
}