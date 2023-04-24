# Security Group For Private Security Group
module "private_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.17.1"

  name        = "private-sg"
  description = "Security Group with HTTP & SSH open to the entire VPC Block, egress ports all open"
  vpc_id      = module.vpc.vpc_id

  #   Ingress Rules & CIDR Blocks
  ingress_rules       = ["ssh-tcp", "http-80-tcp"]
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]
  # Egress Rule - all-all open
  egress_rules = ["all-all"]
  tags         = local.common_tags

}