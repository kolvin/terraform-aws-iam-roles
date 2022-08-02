<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.22.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_instance_profile.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.managed](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_policy_document.assume_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.assume_role_aggregated](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_roles"></a> [roles](#input\_roles) | Collection of roles for this module to manage | <pre>map(object({<br>    description = string       # Description of the role<br>    principals = list(object({ # Collection of princpals to be added as seperate statments<br>      entity         = string<br>      values         = list(string)<br>      assume_actions = list(string)<br>      conditions = list(object({<br>        test     = string<br>        variable = string<br>        values   = list(string)<br>      }))<br>    }))<br>    instance_profile_enabled = bool         # Create EC2 instance profile for this role<br>    policy_documents         = list(string) # List of JSON IAM policy documents<br>    managed_policy_arns      = list(string) # List of IAM policy arns<br>    max_session_duration     = number       # Maximum session duration (in seconds) that you want to set for the specified role<br>    path                     = string       # Identifiable path to the role<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_roles"></a> [roles](#output\_roles) | n/a |
<!-- END_TF_DOCS -->