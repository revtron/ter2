resource "aws_s3_bucket" "terraxel" {
   bucket ="terraxel-bucket-12345"
   tags = {
     Name ="junkie"
   }
  count = 3
}