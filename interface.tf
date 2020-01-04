variable "region" {
  default     = "us-east-1"
  description = "The AWS region."
}
variable "prefix" {
  default     = "companycom"
  description = "The name of our company"
}
variable "environment" {
  default     = "dev"
  description = "The name of our environment"
}

output "s3_bucket_id" {
  value = aws_s3_bucket.remote_state.id
}
