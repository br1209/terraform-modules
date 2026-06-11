variable "cluster_name" {
    type = string
    default = "k8s-cluster"
  
}

variable "aws_region" {
    type = string
    default = "us-east-1"
  
}
variable "cluster_version" {
  type    = string
  default = "1.31"
}

variable "node_instance_type" {
  type    = string
  default = "c7i-flex.large"
}

variable "node_count" {
  type    = number
  default = 2
}