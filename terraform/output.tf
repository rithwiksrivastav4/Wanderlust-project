output "web-url" {
  value = format("http://%s", aws_instance.testinstance.public_ip)
}

output "ssh_command" {
  value = format(
    "ssh  ubuntu@%s",
  aws_instance.testinstance.public_ip)
}