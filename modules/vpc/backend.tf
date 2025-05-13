terraform {
  backend "s3" {
    bucket = "vishnu-terraform-state-bucket-9823764812"
    key    = "vpc/terraform.tfstate"   # <- Very Important
    region = "ap-south-1"
  }
}
