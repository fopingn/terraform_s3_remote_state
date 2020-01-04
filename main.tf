resource "aws_s3_bucket" "remote_state" {
  bucket = "${var.prefix}-${var.environment}-tfremotestate"
  acl    = "authenticated-read"
  versioning {
    enabled = true
  }
  tags = {
    Name        = "${var.prefix}-${var.environment}-tfremotestate"
    Environment = var.environment
  }
}
