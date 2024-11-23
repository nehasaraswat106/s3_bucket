# In your S3 bucket module (main.tf)
resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
  region = var.region
  # Remove the acl argument
}

# Define the acl in a separate aws_s3_bucket_acl resource
resource "aws_s3_bucket_acl" "example_acl" {
  bucket = aws_s3_bucket.example.bucket
  acl    = "private"
}
