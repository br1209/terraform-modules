resource "aws_eks_cluster" "eks_cluster_1" {
    name = var.cluster_name
    version = var.cluster_version
    role_arn = var.cluster_role_arn
    vpc_config {
      subnet_ids = var.subnet_ids
    }
  
}

resource "aws_eks_node_group" "eks_nodes" {
    cluster_name = aws_eks_cluster.eks_cluster_1.name
    node_role_arn = var.node_role_arn
    subnet_ids = var.subnet_ids
    instance_types = [ var.node_instance_type ]
    scaling_config {
      desired_size = var.node_count
      min_size = 1
      max_size = 4
    }

    depends_on = [ aws_eks_cluster.eks_cluster_1 ]
  
}

