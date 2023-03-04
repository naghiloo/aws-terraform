module "vpc" {
  source = "../../modules/vpc"

  name = var.vpc_name
  cidr_block = var.vpc_cidr_block
}

module "igw" {
  source = "../../modules/internet-gateway"

  name   = var.igw_name
  vpc_id = module.vpc.id

  depends_on = [
    module.vpc
  ]
}

module "subnet_public1" {
  source = "../../modules/subnet"

  name = "public1"
  cidr_block = var.subnet_public_cidr_block
  availability_zone = var.subnet_public_az

  vpc_id = module.vpc.id

  depends_on = [
    module.vpc
  ]
}

module "subnet_public2" {
  source = "../../modules/subnet"

  name = "public2"
  cidr_block = "172.16.128.0/24"
  availability_zone = "eu-central-1b"

  vpc_id = module.vpc.id

  depends_on = [
    module.vpc
  ]
}

module "security_group" {
  source = "../../modules/security-group"

  name = var.sg_name
  vpc_id = module.vpc.id

  depends_on = [
    module.vpc
  ]
}

module "sg_rule_http" {
  source = "../../modules/security-group-rule"

  type = var.sgr_type
  from_port = var.sgr_from_port
  to_port = var.sgr_to_port
  protocol = var.sgr_protocol
  cidr_blocks = var.sgr_cidr_block

  sg_id = module.security_group.id

  depends_on = [
    module.security_group
  ]
}

module "key_pair" {
  source = "../../modules/key-pair"
  name = var.key_name
}

module "target_group" {
  source = "../../modules/target-group"

  name = var.tg_name
  protocol = var.tg_protocol
  port = var.tg_port

  vpc_id = module.vpc.id

  depends_on = [
    module.vpc
  ]
}

module "asg" {
  source = "../../modules/autoscaling-group"

  lc_name = var.lc_name
  ami = var.aws_ami
  instance_type = var.aws_instance_type
  key_name = module.key_pair.name

  security_groups = [ module.security_group.id ]

  asg_name = var.asg_name
  target_group_arns = [ module.target_group.arn ]
  health_check_type = var.asg_health_check_type
  termination_policies = [ "OldestInstance" ]
  
  vpc_id = module.vpc.id
  aws_region = var.aws_region
}

module "alb" {
  source = "../../modules/load-balancer"

  name = var.lb_name
  subnets = [ module.subnet_public1.id, module.subnet_public2.id ]
  port = var.lb_port
  protocol = var.lb_protocol
  action_type = var.lb_action_type
  security_groups = [ module.security_group.id ]
  target_group_arn = module.target_group.arn
}
