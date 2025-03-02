resource "aws_instance" "ec2" {
  count             = 4 
  ami               = var.ami
  instance_type     = var.instance_type
  associate_public_ip_address = count.index < 2 ? true : false 
  
  subnet_id         = count.index < 2 ?  module.network.subnets["public-subnet-1"].id : module.network.subnets["private-subnet-1"].id
  security_groups   = count.index < 2 ? [module.network.sg_ssh.id] : [module.network.sg_cidr.id]

  tags = {
    Name = count.index < 2 ? "Pub_Instance-${count.index}" : "Priv_Instance-${count.index}"
  }

  provisioner "local-exec" {
    command = "echo ${self.public_ip} >> public_ips.txt" 
  }
}
