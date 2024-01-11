terraform {
  required_version = ">= 1.0"
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Pulls the image
resource "docker_image" "webpinggo" {
  name = "mkinney/webpinggo:${var.docker_image_version}"
}

# Create a container
resource "docker_container" "wpg" {
  image = docker_image.webpinggo.image_id
  name  = "wpg-${var.external_port}"
  ports {
    internal = "8000"
    external = var.external_port
  }
}
