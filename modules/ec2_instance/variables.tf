variable "vpc_id" {}
variable "subnet_id" {}
variable "ami_id" {}
variable "instance_type" {}
variable "key_name" {}
variable "root_volume_size" {
  type    = number
  default = 8
}
variable "root_volume_type" {
  type    = string
  default = "gp2"
}
