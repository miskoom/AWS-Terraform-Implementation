# AWS EC2 Instance Type
variable "instance_type" {
  description = "Ec2 Instance TYPE"
  type        = string
  default     = "t3.micro"
}
# EC2 Instance Key Pair
variable "instance_keypair" {
  description = "EC2 Instance Keypair"
  type        = string
  default     = "terraform-key"
}

# Private Instance Count
variable "private_instance_count" {
  description = "EC2 Private Instance Count"
  type        = number
  default     = 1
}