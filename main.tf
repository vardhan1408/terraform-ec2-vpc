data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "vishnu-terraform-state-bucket-9823764812"
    key    = "dev/ap-south-1/vpc/terraform.tfstate"
    region = "ap-south-1"
  }
}

module "ec2_instance" {
  source           = "./modules/ec2_instance"
  vpc_id           = data.terraform_remote_state.vpc.outputs.vpc_id
  subnet_id        = data.terraform_remote_state.vpc.outputs.public_subnet_ids[0]
  ami_id           = var.ami_id
  instance_type    = var.instance_type
  key_name         = var.key_name
  root_volume_size = var.root_volume_size
  root_volume_type = var.root_volume_type
}
