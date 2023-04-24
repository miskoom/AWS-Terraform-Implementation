# private Ec2 Instance

module "ec2_private" {
  depends_on             = [module.vpc]
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "2.17.0"
  name                   = "${var.environment}-PrivateVm"
  ami                    = data.aws_ami.amzlinux2.id
  instance_type          = var.instance_type
  user_data              = file("${path.module}/app1-install.sh")
  key_name               = var.instance_keypair
  vpc_security_group_ids = [module.private_sg.security_group_id]
  instance_count         = var.private_instance_count
  #   for_each = toset(["one", "two", "three"])
  subnet_ids = [module.vpc.private_subnets[0],
  module.vpc.private_subnets[1], ]
  tags = local.common_tags
}