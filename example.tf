terraform {
  required_providers {
  linode = {
    source = "linode/linode"
    version = "1.27.1"
    }
  }
}



provider  "linode" {
  token = ""
}

resource  "linode_instance"  "server2" {
  image = "linode/ubuntu22.04"
  label = "server1"
  group = "terraform"
  region = "us-east"
  type = "g6-standard-1"
  root_pass = "Emmylong1"
}

resource  "linode_instance"  "server1" {
  image = "linode/ubuntu22.04"
  label = "server2"
  group = "terraform"
  region = "us-east"
  type = "g6-standard-1"
  root_pass = "Emmylong1"
}

resource  "linode_instance"  "prometheus_server" {
  image = "linode/ubuntu22.04"
  label = "prometheus_server"
  group = "terraform"
  region = "us-east"
  type = "g6-standard-1"
  root_pass = "Emmylong1"
}

