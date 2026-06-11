variable "cluster_name" {
    description = "Name of the cluster"
    type = string
    default = "eks_cluster_1"
}

variable "cluster_version" {
    description = "cluster version"
    type = string
    default = "1.31"
  
}

variable "cluster_role_arn" {
    description = "iam role for cluster and should come from IAM module"
    type = string
    
  
}

variable "node_role_arn" {
    description = "Iam role for Node and should come from IAM module"
    type = string
    
  
}
variable "subnet_ids" {
    description = "list all the subnets ids and come from VPC module"
    type = list(string)

  
}

variable "node_instance_type" {
    description = "node - Instance type "
    type = string
    default = "c7i-flex.large"

  
}

variable "node_count" {
    description = "No of nodes"
    type = number
    default = 2
  
}