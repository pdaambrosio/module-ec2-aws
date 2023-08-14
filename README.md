# module-ec2-aws

- Terraform module to create EC2 instance on AWS
- Example of use see this repository: [atlantis_terraform](https://github.com/pdaambrosio/atlantis_terraform)

<!-- BEGIN_AUTOMATED_TF_DOCS_BLOCK -->
## Requirements

No requirements.
## Usage
Basic usage of this module is as follows:
```hcl
module "example" {
	 source  = "<module-path>"

	 # Optional variables
	 ami_id  = ""
	 associate_public_ip_address  = false
	 detele_on_termination  = true
	 extra_tags  = {}
	 instance_type  = "t2.micro"
	 prefix  = "webapp"
	 security_group_id  = ""
	 servers  = 1
	 subnet_id  = ""
	 user_data  = ""
	 volume_size  = 10
	 volume_type  = "gp2"
}
```
## Resources

| Name | Type |
|------|------|
| [aws_instance.instance_ec2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_key_pair.private_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |
| [tls_private_key.key_length](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [aws_ami.amazon_linux](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_id"></a> [ami\_id](#input\_ami\_id) | ami id to use for the instance | `string` | `""` | no |
| <a name="input_associate_public_ip_address"></a> [associate\_public\_ip\_address](#input\_associate\_public\_ip\_address) | associate public ip address to the instance | `bool` | `false` | no |
| <a name="input_detele_on_termination"></a> [detele\_on\_termination](#input\_detele\_on\_termination) | delete on termination to use for the instance | `bool` | `true` | no |
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | extra tags to add to the instance | `map(any)` | `{}` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | type of instance to create | `string` | `"t2.micro"` | no |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | prefix to use for the instance name | `string` | `"webapp"` | no |
| <a name="input_security_group_id"></a> [security\_group\_id](#input\_security\_group\_id) | security group id to create the instance in | `string` | `""` | no |
| <a name="input_servers"></a> [servers](#input\_servers) | number of servers to create | `number` | `1` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | subnet id to create the instance in | `string` | `""` | no |
| <a name="input_user_data"></a> [user\_data](#input\_user\_data) | user data to create the instance with | `string` | `""` | no |
| <a name="input_volume_size"></a> [volume\_size](#input\_volume\_size) | volume size to use for the instance | `number` | `10` | no |
| <a name="input_volume_type"></a> [volume\_type](#input\_volume\_type) | volume type to use for the instance | `string` | `"gp2"` | no |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_availability_zone"></a> [availability\_zone](#output\_availability\_zone) | Availability zone of the instance |
| <a name="output_instances_id"></a> [instances\_id](#output\_instances\_id) | ID of the instance |
| <a name="output_ip_address"></a> [ip\_address](#output\_ip\_address) | Public IP address of the instance |
| <a name="output_private_key"></a> [private\_key](#output\_private\_key) | Private key of the instance |
<!-- END_AUTOMATED_TF_DOCS_BLOCK -->