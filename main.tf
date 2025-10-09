data "aws_ami" "amazon_linux" {
  most_recent = false
  owners      = ["137112412989"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.8.20250915.0-kernel-6.1-x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}

#tfsec:ignore:aws-ec2-enforce-http-token-imds
resource "aws_instance" "this" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"


  root_block_device {
    volume_size = 8
    encrypted   = true
  }

  # Cria mais discos durante a criação da máquina
  dynamic "ebs_block_device" {
    for_each = var.ebs_block_devices
    iterator = device
    content {
      device_name = device.value["device_name"]
      encrypted   = device.value["encrypted"]
      volume_size = device.value["volume_size"]
    }
  }

  tags = {
    Name        = var.nome_instancia
    Env         = var.environment_instancia
    Platarforma = data.aws_ami.amazon_linux.platform_details
  }
}