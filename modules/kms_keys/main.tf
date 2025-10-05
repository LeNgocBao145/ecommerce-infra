resource "aws_kms_key" "s3_encryption" {
  description             = "KMS key for S3 server-side encryption"
  deletion_window_in_days = 10
  enable_key_rotation     = true

  tags = {
    Name = "kms_encrypt_s3_key"
    Project     = "ecommerce"
    Environment = "dev"
    Owner = "lengocbao"
    Managed_by  = "terraform"
  }
}

resource "aws_kms_alias" "s3_encryption" {
  name          = "alias/s3_encryption"
  target_key_id = aws_kms_key.s3_encryption.key_id
}
