# S3 Module Variables
variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
  default     = "my_bucket_neha"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}
