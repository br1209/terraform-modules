output "cluster_name" {
    value = aws_eks_cluster.eks_cluster_1.name
  
}
output "cluster_endpoint" {
    value = aws_eks_cluster.eks_cluster_1.endpoint
  
}