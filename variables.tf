variable "bucket_name" {
    description = "Name of the S3 Bucket"
    type = string
    default = "sweety-terraform-bucket-2026"
}

variable "environment" {
    description = "Environment name (dev, staging, production)"
    type = string
    default = "dev"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}