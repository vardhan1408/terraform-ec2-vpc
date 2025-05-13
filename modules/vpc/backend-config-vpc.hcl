terraform {
  backend "s3" {
    bucket = "dev-myapp-ap-s1-123456789012-tf-state"
    key    = "dev/myapp/vpc/terraform.tfstate"  # <-- This is the file that gets created in the bucket
    region = "ap-south-1"
  }
}
