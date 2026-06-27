
output "bucket_name" {
    description = "The name of the created S3 bucket"
    value = aws_s3_bucket.my_bucket.bucket
}

output "bucket_arn" {
    description = "The ARN of the created S3 bucket"
    value = aws_s3_bucket.my_bucket.arn
}

output "instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.my_server.id
}

output "instance_public_ip" {
  description = "EC2 Instance Public IP"
  value       = aws_instance.my_server.public_ip
}