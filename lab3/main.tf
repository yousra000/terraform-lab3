module "network"{
    source = "./modules"
    vpc_cidr = var.vpc_cidr
    env = var.env
    list_subnets_config= var.list_subnets_config
}