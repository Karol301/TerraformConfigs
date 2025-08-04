output "IP address" {
  description = "IP address of EC2 Instance"
  value = aws_instance.EC2_Instance.public_ip
}