module "network" {
  source = "./modules/network"

  project_name = var.project_name
  environment  = var.environment
}

module "security_group" {

  source = "./modules/security-group"


  project_name = var.project_name
  environment  = var.environment

  vpc_id = module.network.vpc_id
}

module "keypair" {

  source = "./modules/keypair"

  key_name        = var.key_name
  public_key_path = var.public_key_path
}


module "ec2" {

  source = "./modules/ec2"

  project_name = var.project_name
  environment  = var.environment

  subnet_id = module.network.public_subnet_id

  security_group_id = module.security_group.security_group_id

  key_name = module.keypair.key_name
}