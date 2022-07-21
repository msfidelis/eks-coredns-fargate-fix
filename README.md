<!-- BEGIN_TF_DOCS -->
# Lambda to Fix CoreDNS to Run on Fargate

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_archive"></a> [archive](#provider\_archive) | 2.2.0 |
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.22.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_lambda_function.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function) | resource |
| [aws_security_group.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [archive_file.coredns_archive](https://registry.terraform.io/providers/hashicorp/archive/latest/docs/data-sources/file) | data source |
| [aws_iam_policy_document.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_lambda_name"></a> [lambda\_name](#input\_lambda\_name) | n/a | `string` | `"coredns_fix"` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | n/a | `list` | <pre>[<br>  "subnet-29954875",<br>  "subnet-c832eeaf",<br>  "subnet-23a9760d"<br>]</pre> | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | n/a | `string` | `"vpc-ba8b92c1"` | no |

## Outputs

No outputs.

## Author

👤 **Matheus Fidelis**

* Website: https://raj.ninja
* Twitter: [@fidelissauro](https://twitter.com/fidelissauro)
* Github: [@msfidelis](https://github.com/msfidelis)
* LinkedIn: [@msfidelis](https://linkedin.com/in/msfidelis)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!<br />Feel free to check [issues page](/issues).

## Show your support

Give a ⭐️ if this project helped you!

## 📝 License

Copyright © 2020 [Matheus Fidelis](https://github.com/msfidelis).<br />
This project is [MIT](LICENSE) licensed.
<!-- END_TF_DOCS -->