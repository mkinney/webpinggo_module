output "endpoint" {
  value = format("http://%s:%s", "localhost", var.external_port)
}

output "ip_address" {
  value = docker_container.wpg.network_data[0].ip_address
}
