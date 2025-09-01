terraform {
  required_providers {
    # aws = {
    #   source  = "hashicorp/aws"
    #   version = "6.11.0"
    # }
    google = {
      source = "hashicorp/google"
    }
  }
}

variable "bucket_name" {
  type    = string
  # default = "bucket-prod"
  default = "us-central1-a"
}

output "stuff" {
  # value = provider::aws::arn_build("aws", "s3", "", "", var.bucket_name)
  value = provider::google::region_from_zone(var.bucket_name)
}
