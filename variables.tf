variable "region" {
  type        = string
  description = "The region where resources will be created"
  default     = "us-east-1"
}

variable "stage" {
  type        = string
  description = "Stage variable to identify the environment of the resources being created. Ex: dev, qa, prod, etc."
  default     = "dev"
}