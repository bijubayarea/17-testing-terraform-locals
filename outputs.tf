
output "tags" {
  value = local.tags
}

output "public_dns_name" {
  description = "Public DNS names of the load balancer for this project"
  value       = module.elb_http.this_elb_dns_name
}

output "app" {
  value = aws_instance.app[*].private_ip
}