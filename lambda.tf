data "archive_file" "coredns_archive" {
  type        = "zip"
  source_dir  = "files/lambda/"
  output_path = "files/coredns.zip"
}

resource "aws_lambda_function" "main" {
  function_name    = var.lambda_name
  runtime          = "python3.7"
  handler          = "main.handler"
  role             = aws_iam_role.main.arn
  filename         = data.archive_file.coredns_archive.output_path
  source_code_hash = data.archive_file.coredns_archive.output_base64sha256
  timeout          = 120

  vpc_config {
    subnet_ids          = var.subnet_ids
    security_group_ids  = [
        aws_security_group.main.id
    ]
  }
}