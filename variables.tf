variable "cluster_name" {
  description = "Name for the EKS cluster"
  type        = string
}

variable "cluster_version" {
  description = "Version for the EKS cluster"
  type        = string
  default     = "1.29"
}

variable "cluster_endpoint_public_access" {
  description = "Flag to indicate whether the EKS cluster endpoint should be publicly accessible"
  type        = bool
  default     = true
}


variable "name" {
    description = "name of the VPC"
    type = string
}