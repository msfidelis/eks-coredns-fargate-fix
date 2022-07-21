variable "lambda_name" {
  type      = string
  default   = "coredns_fix"
}

variable "vpc_id" {
  type      = string
  default   = "vpc-ba8b92c1"
}

variable "subnet_ids" {
  type      = list
  default   = [
    "subnet-29954875",
    "subnet-c832eeaf",
    "subnet-23a9760d"
  ]
}