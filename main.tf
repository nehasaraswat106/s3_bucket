# S3 Bucket resource without the deprecated acl argument
resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
  region = var.region
  # Remove acl argument
}

# Define acl in a separate aws_s3_bucket_acl resource
resource "aws_s3_bucket_acl" "example_acl" {
  bucket = aws_s3_bucket.s3_bucket.bucket
  acl    = "private"  # or another appropriate ACL
}
