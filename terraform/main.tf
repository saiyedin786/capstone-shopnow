module "vpc" {
  source = "./modules/vpc"
}

module "eks" {
  source = "./modules/eks"

  cluster_role_arn = var.cluster_role_arn
  subnet_ids       = module.vpc.subnet_ids
}