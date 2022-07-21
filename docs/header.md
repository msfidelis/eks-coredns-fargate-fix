# Lambda to Fix CoreDNS to Run on Fargate

## Usage

```hcl

data "aws_eks_cluster_auth" "main" {
  name = aws_eks_cluster.eks_cluster.id
}



data "aws_lambda_invocation" "coredns_fix" {
  function_name = var.lambda_name
  input         = <<JSON
{
  "endpoint":   "${aws_eks_cluster.eks_cluster.endpoint}",
  "token":      "${data.aws_eks_cluster_auth.main.token}"
}
JSON
}
```