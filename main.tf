
resource "aws_instance" "server1" {
  //count         = 2
  //ami           = "ami-01fccab91b456acc2"  # Amazon Linux 2
  // ami = "ami-0651a24cc46a968a0" Prof Jenkins AMI
  ami           = "ami-0a0e5d9c7acc336f1"  # Ubuntu 22.04
  //ami           = "ami-032346ab877c418af"  # Ubuntu 20.04 with SQL Server 2022 Standard
  instance_type = "t2.micro"
  key_name      = aws_key_pair.aws_key.key_name
  //key_name = "virginiakey"
  //user_data       = file("server_install.sh")
  security_groups = [aws_security_group.sg1.name]

  tags = {
    //Name = "Terraform-server-${count.index + 1}"
    Name = "Terraform-server"
  }
}

/*
resource "aws_ebs_volume" "Vol1" {
  availability_zone = aws_instance.server1[*].availability_zone
  size              = 30

  tags = {
    Name = "Dev-volume"
  }
  lifecycle {

  }

}


resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdc"
  volume_id   = aws_ebs_volume.Vol1.id
  instance_id = aws_instance.server1.id
}

resource "local_file" "file1" {
  filename = "test.txt"
  content = "hello Robert"
}
*/

