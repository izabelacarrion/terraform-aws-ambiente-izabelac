output "public_ip" {
  value       = { for chave, instance in aws_instance.this : instance.tags["Env"] => instance.public_ip... }
  description = "O endereço de IP publico da instancia."
}