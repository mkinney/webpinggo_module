variable "external_port" {
  description = "External port"
  default     = 8000
  type        = number
}

variable "docker_image_version" {
  description = "Version of the docker image"
  default     = "latest"
  type        = string
}
