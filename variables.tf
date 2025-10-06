variable "nome_instancia" {
  type        = string
  description = "Nome da instancia"
}

variable "environment_instancia" {
  type        = string
  description = "Ambiente da instancia"
  default     = "Staging"
}

variable "ebs_block_devices" {
  description = "Lista de volumes EBS para ser criado e montado na instancia"
  type        = list(any) #Lista de qualquer coisa
  default     = []
}