output "aws_instance_ip" {
    description = "Instance IP Address"
    value = aws_instance.web.public_ip
}

output "aws_instance_dns" {
    description = "Instance DNS Name"
    value = aws_instance.web.public_dns
}

output "aws_instance_id" {
    description = "Instance ID"
    value = aws_instance.web.id
}
