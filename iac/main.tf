terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}
provider "digitalocean" {
  token = ""
}

resource "digitalocean_kubernetes_cluster" "k8s_iniciativa" {
  name   = "k8s-iniciativa"
  region = "nyc1"
  # Grab the latest version slug from `doctl kubernetes options versions`
  version = "1.22.8-do.1"

  node_pool {
    name       = "default"
    size       = "s-2vcpu-2gb"
    node_count = 3

  }
}