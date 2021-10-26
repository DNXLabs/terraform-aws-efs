# terraform-aws-efs

[![Lint Status](https://github.com/DNXLabs/terraform-aws-efs/workflows/Lint/badge.svg)](https://github.com/DNXLabs/terraform-aws-efs/actions)
[![LICENSE](https://img.shields.io/github/license/DNXLabs/terraform-aws-efs)](https://github.com/DNXLabs/terraform-aws-efs/blob/master/LICENSE)

<!--- BEGIN_TF_DOCS --->

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.0 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| access\_points | A list of the access points which will be created for the EFS volume | `list(string)` | n/a | yes |
| efs\_access\_point\_gid | The gid number to associate with the EFS access point | `number` | `0` | no |
| efs\_access\_point\_uid | The uid number to associate with the EFS access point | `number` | `0` | no |
| encrypted | If true, the disk will be encrypted. | `bool` | n/a | yes |
| environment\_name | Name of the Environment, for example: Alpha/Gamma/Staging/Prod | `any` | n/a | yes |
| kms\_key\_id | The ARN for the KMS encryption key. When specifying kms\_key\_id, encrypted needs to be set to true. | `any` | n/a | yes |
| performance\_mode | The file system performance mode. Can be either ''generalPurpose'' or ''maxIO'' (Default: ''generalPurpose'') | `any` | n/a | yes |
| private\_subnet\_ids | The private subnet IDs in which the EFS will have a mount. | `list(string)` | n/a | yes |
| provisioned\_throughput\_in\_mibps | The throughput, measured in MiB/s, that you want to provision for the file system. Only applicable with throughput\_mode set to provisioned. | `any` | `null` | no |
| throughput\_mode | Throughput mode for the file system. Defaults to bursting. Valid values: bursting, provisioned. When using provisioned, also set provisioned\_throughput\_in\_mibps. | `any` | n/a | yes |
| vpc\_id | The VPC ID of the security group, in case the variable security\_groups is empty | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| access\_point\_ids | EFS AP ids |
| file\_system\_arn | n/a |
| file\_system\_id | n/a |
| mount\_target\_id | n/a |

<!--- END_TF_DOCS --->

## Authors

Module managed by [DNX Solutions](https://github.com/DNXLabs).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/DNXLabs/terraform-aws-efs/blob/master/LICENSE) for full details.
