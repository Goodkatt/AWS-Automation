resource "aws_instance" "bss-ec2" {
 ami = var.arm64-ami
 instance_type = var.bss-type
 key_name = var.maya-keypair
 network_interface {
    network_interface_id = aws_network_interface.bss-nic.id
    device_index = 0
 } 
 //iam_instance_profile = var.default_role
 root_block_device {
    volume_type = "gp3"
    volume_size = "50"
    tags = {
        "Name" = "Maya-Bss-Test-Root",
        "Patch" = "true",
        "Backup" = "true"
    }
 }
 ebs_block_device {
    device_name = "/dev/xvdp"
    volume_type = "gp3"
    delete_on_termination = "true"
    volume_size = "50"
    tags = {
        "Name" = "Maya-Bss-Test-Data",
        "Patch" = "true",
        "Backup" = "true"
    }
 }
 tags = {
    "Name" = "Maya-Bss-Test"
 }
}
resource "aws_instance" "csm-ec2" {
 ami = var.arm64-ami
 instance_type = var.csm-type
 key_name = var.maya-keypair
 network_interface {
    network_interface_id = aws_network_interface.csm-nic.id
    device_index = 0
 } 
 //iam_instance_profile = var.default_role
 root_block_device {
    volume_type = "gp3"
    volume_size = "100"
    tags = {
        "Name" = "Maya-Csm-Test-Root",
        "Patch" = "true",
        "Backup" = "true"
    }
 }
 tags = {
    "Name" = "Maya-Csm-Test"
 }
}
resource "aws_instance" "db-ec2" {
 ami = var.arm64-ami
 instance_type = var.db-type
 key_name = var.maya-keypair
 network_interface {
    network_interface_id = aws_network_interface.db-nic.id
    device_index = 0
 } 
 //iam_instance_profile = var.default_role
 root_block_device {
    volume_type = "gp3"
    volume_size = "50"
    tags = {
        "Name" = "Maya-Db-Test-Root",
        "Patch" = "true",
        "Backup" = "true"
    }
 }
 ebs_block_device {
    device_name = "/dev/xvdp"
    volume_type = "st1"
    delete_on_termination = "true"
    volume_size = "500"
    tags = {
        "Name" = "Maya-Db-Test-Data",
        "Patch" = "true",
        "Backup" = "true"
    }
 }
 tags = {
    "Name" = "Maya-Db-Test"
 }
}
resource "aws_instance" "oab-ec2" {
 ami = var.arm64-ami
 instance_type = var.oab-type
 key_name = var.maya-keypair
 network_interface {
    network_interface_id = aws_network_interface.oab-nic.id
    device_index = 0
 } 
 //iam_instance_profile = var.default_role
 root_block_device {
    volume_type = "gp3"
    volume_size = "50"
    tags = {
        "Name" = "Maya-Oab-Test-Root",
        "Patch" = "true",
        "Backup" = "true"
    }
 }
 ebs_block_device {
    device_name = "/dev/xvdp"
    volume_type = "gp3"
    delete_on_termination = "true"
    volume_size = "50"
    tags = {
        "Name" = "Maya-Oab-Test-Data",
        "Patch" = "true",
        "Backup" = "true"
    }
 }
 tags = {
    "Name" = "Maya-Oab-Test"
 }
}
resource "aws_instance" "om-ec2" {
 ami = var.arm64-ami
 instance_type = var.om-type
 key_name = var.maya-keypair
 network_interface {
    network_interface_id = aws_network_interface.om-nic.id
    device_index = 0
 } 
 //iam_instance_profile = var.default_role
 root_block_device {
    volume_type = "gp3"
    volume_size = "50"
    tags = {
        "Name" = "Maya-Om-Test-Root",
        "Patch" = "true",
        "Backup" = "true"
    }
 }
 ebs_block_device {
    device_name = "/dev/xvdp"
    volume_type = "gp3"
    delete_on_termination = "true"
    volume_size = "50"
    tags = {
        "Name" = "Maya-Om-Test-Data",
        "Patch" = "true",
        "Backup" = "true"
    }
 }
 tags = {
    "Name" = "Maya-Om-Test"
 }
}
resource "aws_instance" "web-ec2" {
 ami = var.arm64-ami
 instance_type = var.web-type
 key_name = var.maya-keypair
 network_interface {
    network_interface_id = aws_network_interface.web-nic.id
    device_index = 0
 } 
 //iam_instance_profile = var.default_role
 root_block_device {
    volume_type = "gp3"
    volume_size = "50"
    tags = {
        "Name" = "Maya-Web-Test-Root",
        "Patch" = "true",
        "Backup" = "true"
    }
 }
 ebs_block_device {
    device_name = "/dev/xvdp"
    volume_type = "gp3"
    delete_on_termination = "true"
    volume_size = "50"
    tags = {
        "Name" = "Maya-Web-Test-Data",
        "Patch" = "true",
        "Backup" = "true"
    }
 }
 tags = {
    "Name" = "Maya-Web-Test"
 }
}
resource "aws_instance" "eca-ec2" {
 ami = var.arm64-ami
 instance_type = var.eca-type
 key_name = var.maya-keypair
 network_interface {
    network_interface_id = aws_network_interface.eca-nic.id
    device_index = 0
 } 
 //iam_instance_profile = var.default_role
 root_block_device {
    volume_type = "gp3"
    volume_size = "50"
    tags = {
        "Name" = "Maya-Eca-Test-Root",
        "Patch" = "true",
        "Backup" = "true"
    }
 }
 ebs_block_device {
    device_name = "/dev/xvdp"
    volume_type = "gp3"
    delete_on_termination = "true"
    volume_size = "50"
    tags = {
        "Name" = "Maya-Eca-Test-Data",
        "Patch" = "true",
        "Backup" = "true"
    }
 }
 tags = {
    "Name" = "Maya-Eca-Test"
 }
}
resource "aws_instance" "admintoolbox-ec2" {
 ami = var.arm64-ami
 instance_type = var.admintoolbox-type
 key_name = var.maya-keypair
 network_interface {
    network_interface_id = aws_network_interface.admintoolbox-nic.id
    device_index = 0
 } 
 //iam_instance_profile = var.default_role
 root_block_device {
    volume_type = "gp3"
    volume_size = "50"
    tags = {
        "Name" = "Maya-Admintoolbox-Test-Root",
        "Patch" = "true",
        "Backup" = "true"
    }
 }
 ebs_block_device {
    device_name = "/dev/xvdp"
    volume_type = "gp3"
    delete_on_termination = "true"
    volume_size = "50"
    tags = {
        "Name" = "Maya-Admintoolbox-Test-Data",
        "Patch" = "true",
        "Backup" = "true"
    }
 }
 tags = {
    "Name" = "Maya-Admintoolbox-Test"
 }
}
resource "aws_instance" "cideployer-ec2" {
 ami = var.arm64-ami
 instance_type = var.cideployer-type
 key_name = var.maya-keypair
 network_interface {
    network_interface_id = aws_network_interface.cideployer-nic.id
    device_index = 0
 } 
 //iam_instance_profile = var.default_role
 root_block_device {
    volume_type = "gp3"
    volume_size = "50"
    tags = {
        "Name" = "Maya-Cideployer-Test-Root",
        "Patch" = "true",
        "Backup" = "true"
    }
 }
 ebs_block_device {
    device_name = "/dev/xvdp"
    volume_type = "gp3"
    delete_on_termination = "true"
    volume_size = "100"
    tags = {
        "Name" = "Maya-Cideployer-Test-Data",
        "Patch" = "true",
        "Backup" = "true"
    }
 }
 tags = {
    "Name" = "Maya-Cideployer-Test"
 }
}
resource "aws_instance" "jump-ec2" {
 ami = var.arm64-ami
 instance_type = var.jump-type
 key_name = var.maya-keypair
 network_interface {
    network_interface_id = aws_network_interface.jump-nic.id
    device_index = 0
 } 
 //iam_instance_profile = var.default_role
 root_block_device {
    volume_type = "gp3"
    volume_size = "50"
    tags = {
        "Name" = "Maya-Jump-Root",
        "Patch" = "true",
        "Backup" = "true"
    }
 }

 tags = {
    "Name" = "Maya-Jump"
 }
}