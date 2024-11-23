resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
}

# Define acl in a separate aws_s3_bucket_acl resource
resource "aws_s3_bucket_acl" "example_acl" {
  bucket = aws_s3_bucket.s3_bucket.bucket
  acl    = "private"  # You can change to "public-read" if needed
}

output "bucket_name" {
  value = aws_s3_bucket.s3_bucket.bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.s3_bucket.arn
}
