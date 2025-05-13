terraform {
  backend "s3" {
    bucket = "vishnu-terraform-state-bucket-9823764812"
    key    = "dev/ap-south-1/vpc/terraform.tfstate"
    region = "ap-south-1"
  }
}
