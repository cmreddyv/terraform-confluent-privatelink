resource "confluent_network" "this" {
    display_name = var.private_link_display_name
    cloud = var.cloud
    region = var.region
    connection_types = ["PRIVATELINK"]
    zones = var.subnets_to_privatelink
    environment {
      id = confluent_environment.this.id
    }
    dns_config {
      resolution = "PRIVATE"
    }
    lifecycle {
      prevent_destroy = true
    }
  
}

resource "confluent_private_link_access" "this" {
    display_name = var.private_link_access_display_name
    aws {
      account = var.aws_account_id
    }
    environment {
      id = var.environment_id
    }
    network {
      id = confluent_network.this.id
    }
  
}
