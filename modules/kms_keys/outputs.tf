output "kms_encrypt_s3_key_arn" {
  description = "ARN of the KMS key for remote state bucket encryption"
  value       = aws_kms_key.s3_encryption.arn
}
