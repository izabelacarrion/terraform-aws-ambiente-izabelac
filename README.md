# terraform-aws-ambiente-izabelac
Módulo para criação do ambiente sugerido pelo professor.

## To do (para fazer)
- Uma etapa do pipeline que atualize automaticamente a versão do example.
- Adicionar teste automatizado no pipeline
- Colocar tfsec para enviar relatório para o github security
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 6.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.15.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_ami.amazon_linux](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ebs_block_devices"></a> [ebs\_block\_devices](#input\_ebs\_block\_devices) | Lista de volumes EBS para ser criado e montado na instancia | `list(any)` | `[]` | no |
| <a name="input_environment_instancia"></a> [environment\_instancia](#input\_environment\_instancia) | Ambiente da instancia | `string` | `"Staging"` | no |
| <a name="input_nome_instancia"></a> [nome\_instancia](#input\_nome\_instancia) | Nome da instancia | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | O endereço de IP publico da instancia. |
<!-- END_TF_DOCS -->