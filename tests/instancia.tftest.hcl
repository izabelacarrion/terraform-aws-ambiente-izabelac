variables {
  nome_instancia = "Producao"
}

run "validar_nome" {

  command = plan

  assert {
    condition     = aws_instance.this.tags["Name"] == var.nome_instancia
    error_message = "Nome da instancia é invalido"
  }

}