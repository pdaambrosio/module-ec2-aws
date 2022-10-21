output "ip_address" {
  value       = aws_instance.instance_ec2[*].public_ip
  description = "Public IP address of the instance"
}

output "instances_id" {
  value       = aws_instance.instance_ec2[*].id
  description = "ID of the instance"
}

output "private_key" {
  value       = tls_private_key.key_length.private_key_pem
  sensitive   = true
  description = "Private key of the instance"
}

output "availability_zone" {
  value       = aws_instance.instance_ec2[*].availability_zone
  description = "Availability zone of the instance"
}
