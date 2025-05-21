// This file is not used by the template directly but shows how Terraform variables would look
variable "clusterName" {
  type = string
}

variable "region" {
  type = string
}

variable "version" {
  type = string
}
variable "number_of_nodes" {
  type = int
}
variable "master_node_cpu" {
  type = int
}
