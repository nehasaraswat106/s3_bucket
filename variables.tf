# Define the bucket_name variable
variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

# Define the region variable (region will be managed by the provider)
variable "region" {
  description = "AWS region"
  type        = string
}
