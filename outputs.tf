
output "public-ip" {
  value = aws_instance.server1.public_ip
}


output "ssh" {
  value = "ssh -i ${aws_instance.server1.key_name}.pem ubuntu@${aws_instance.server1.public_ip}"

}



/*
output "ssh" {
  value = [
    for instance in aws_instance.server1 : "ssh -i virginiakey.pem ec2-user@aws_instance.server1[*].public_ip"
  //"ssh -i ${aws_instance.server1[*].key_name}.pem ec2-user@${aws_instance.server1[*].public_ip}"
  
  ]
}


output "public-ip" {
  value = [for instance in aws_instance.server1 : aws_instance.server1[*].public_ip]
}
*/



