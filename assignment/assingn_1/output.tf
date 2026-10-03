output "public_ip" {
   description = "The public IP address of the EC2 instance"
   value       = aws_instance.example.public_ip
} 

output "Instance_ID" {
    description = "The ID of the EC2 instance"
    value       = aws_instance.example.id 
}

output "Instance_name" {
  description = "Name of instance "
  value =  aws_instance.example.tags["Name"]
}