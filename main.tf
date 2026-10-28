resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
} 
module "s3-bucket-os" {
  source  = "app.terraform.io/policy-as-code-training/s3-bucket-os/aws"
  version = "1.0.0"
  bucket_name = "OS-bucket"
  # insert required variables here
}