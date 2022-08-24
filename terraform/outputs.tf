output "dns_publica" {
    description = "DNS publica servidor"
  value = "http://${aws_instance.servidor1.public_dns}:8080"
}

output "ipv4_servidor" {
  description = "IPv4 de nuestro servidor"
  value       = aws_instance.servidor1.public_ip
}
