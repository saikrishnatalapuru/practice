output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.example.id
}

output "private_ip" {
  description = "private_ip"
  value       = aws_instance.example.private_ip
}

output "public_ip" {
  description = "public_ip"
  value       = aws_instance.example.public_ip
}