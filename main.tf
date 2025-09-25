terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

# Pull nginx image
resource "docker_image" "nginx" {
  name = "nginx:latest"
}

# Run a container using the image ID instead of latest
resource "docker_container" "nginx_container" {
  name  = "terraform-nginx"
  image = docker_image.nginx.image_id  

  ports {
    internal = 80
    external = 8080
  }
}
