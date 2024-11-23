# Correct reference to the s3 bucket resource
output "bucket_arn" {
  value = aws_s3_bucket.s3_bucket.arn  # Reference the correct resource name
}
