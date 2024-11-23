resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
  region = var.region
}


resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
}

# Define acl in a separate aws_s3_bucket_acl resource
resource "aws_s3_bucket_acl" "example_acl" {
  bucket = aws_s3_bucket.s3_bucket.bucket
  acl    = "private"  # or "public-read", depending on your needs
}
