module "vpc" {
  source = "../../modules/vpc"

  name = var.vpc_name
}

module "subne_public" {
  source = "../../modules/subnet"

  name = var.subnet_public_name
  cidr_block = var.subnet_public_cidr_block
  availability_zone = var.subnet_public_az

  vpc_id = module.vpc.id
}

module "key_pair" {
  source = "../../modules/key-pair"
  name = var.key_name
}

module "ec2_elf" {
  source = "../../modules/ec2"

  name = var.ec2_elf_name
  ami = var.ec2_ami
  instance_type = var.instance_type
  security_groups = var.security_groups
  key_name = var.key_name
  subnet_id = module.subne_public.id
}