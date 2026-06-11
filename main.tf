module "vpc" {
    source = "./modules/vpc"
    name = "${var.cluster_name}-${terraform.workspace}"
    vpc_cidr = "10.0.0.0/16"
  
}

module "iam" {
    source = "./modules/iam"
    name = "${var.cluster_name}-${terraform.workspace}"
  
}

module "eks" {
    source = "./modules/eks"
    cluster_name = var.cluster_name
    cluster_version = var.cluster_version
    cluster_role_arn = module.iam.cluster_role_arn
    node_role_arn = module.iam.node_role_arn
    subnet_ids = [
        module.vpc.private_subnet_1,
        module.vpc.private_subnet_2,
    ]
    node_instance_type = var.node_instance_type
    node_count = var.node_count
  
}