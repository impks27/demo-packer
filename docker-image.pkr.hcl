# docker-image.pkr.hcl

# Use "docker" as the source type
source "docker" "ubuntu" {
  image = "ubuntu:20.04"
  commit = true
}

build {
  sources = ["source.docker.ubuntu"]

  provisioner "shell" {
    script = "scripts/install_nginx.sh"
  }
}
