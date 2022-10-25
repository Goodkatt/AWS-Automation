resource "aws_security_group" "maya-ansible-sg" {
    name = "Maya-Ansible-Test"
    description = "Maya-Ansible-Test"
    vpc_id = aws_vpc.maya-vpc.id
    egress {
        description = "Maya-Ansible-Test"
        from_port = 0
        protocol = "-1"
        to_port = 0
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    tags = {
      "Name" = "Maya-Ansible-Test"
    }
}
resource "aws_security_group_rule" "jump-22-ansible" {
    type = "ingress"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    security_group_id = aws_security_group.maya-ansible-sg.id
    source_security_group_id = aws_security_group.maya-jump-sg.id
    description = "Jump Server SSH"
}
resource "aws_network_interface" "ansible-nic" {
 subnet_id = aws_subnet.private-mgmt-subnet.id
 private_ips = ["172.32.6.60"]
 security_groups = [ aws_security_group.maya-ansible-sg.id ]
 description = "Primary Network Interface Ansible"
 tags = {
   "Name" = "Maya-Ansible"
 }
}
resource "aws_instance" "ansible-ec2" {
 ami = var.arm64-ami
 instance_type = var.ansible-type
 key_name = var.maya-keypair
 network_interface {
    network_interface_id = aws_network_interface.ansible-nic.id
    device_index = 0
 } 
 //iam_instance_profile = var.default_role
 root_block_device {
    volume_type = "gp3"
    volume_size = "8"
    tags = {
        "Name" = "Maya-Ansible-Root",
        "Patch" = "true",
        "Backup" = "true"
    }
 }

 tags = {
    "Name" = "Maya-Ansible"
 }
}