output "public_ip" {
  value       = aws_instance.this.public_ip
  description = "O endereço de IP publico da instancia."
}