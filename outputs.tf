output "private_link_id" {
    value = confluent_network.this.id
}

output "private_link_access_id" {
    value = confluent_private_link_access.this.id
}
