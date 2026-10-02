output "audit_bucket_name" {
  description = "Audit log bucket name."
  value       = aws_s3_bucket.audit.id
}

output "cloudtrail_name" {
  description = "CloudTrail name."
  value       = aws_cloudtrail.this.name
}

output "guardduty_detector_id" {
  description = "GuardDuty detector ID."
  value       = aws_guardduty_detector.this.id
}
