//Network Interfaceler
//App subnet 172.32.2.0/24
//Db subnet 172.32.4.0/24
//Mgmt subnet 172.32.6.0/24
//Public subnet 172.32.0.0/24
resource "aws_network_interface" "jump-nic" {
 subnet_id = aws_subnet.public-web-subnet.id
 private_ips = ["172.32.0.60"]
 security_groups = [ aws_security_group.maya-jump-sg.id, aws_security_group.maya-web-all.id ]
 description = "Primary Network Interface Jump"
 tags = {
   "Name" = "Maya-Jump"
 }
}
resource "aws_network_interface" "bss-nic" {
    subnet_id = aws_subnet.private-app-subnet.id
    private_ips = [ "172.32.2.20" ]
    security_groups = [ aws_security_group.maya-bss-sg.id, aws_security_group.maya-app-all.id ]
    description = "Primary Network Interface Maya-Bss-Test"
    tags = {
      "Name" = "Maya-Bss-Test"
    }
}
resource "aws_network_interface" "csm-nic" {
    subnet_id = aws_subnet.private-app-subnet.id
    private_ips = [ "172.32.2.59" ]
    security_groups = [ aws_security_group.maya-csm-sg.id, aws_security_group.maya-app-all.id ]
    description = "Primary Network Interface Maya-Csm-Test"
    tags = {
      "Name" = "Maya-Csm-Test"
    }
}
resource "aws_network_interface" "db-nic" {
    subnet_id = aws_subnet.private-db-subnet.id
    private_ips = [ "172.32.4.60" ]
    security_groups = [ aws_security_group.maya-db-sg.id, aws_security_group.maya-db-all.id ]
    description = "Primary Network Interface Maya-Db-Test"
    tags = {
      "Name" = "Maya-Db-Test"
    }
}
resource "aws_network_interface" "oab-nic" {
    subnet_id = aws_subnet.private-app-subnet.id
    private_ips = [ "172.32.2.72" ]
    security_groups = [ aws_security_group.maya-oab-sg.id, aws_security_group.maya-app-all.id ]
    description = "Primary Network Interface Maya-Oab-Test"
    tags = {
      "Name" = "Maya-Oab-Test"
    }
}
resource "aws_network_interface" "om-nic" {
    subnet_id = aws_subnet.private-app-subnet.id
    private_ips = [ "172.32.2.112" ]
    security_groups = [ aws_security_group.maya-om-sg.id, aws_security_group.maya-app-all.id ]
    description = "Primary Network Interface Maya-Om-Test"
    tags = {
      "Name" = "Maya-Om-Test"
    }
}
resource "aws_network_interface" "web-nic" {
    subnet_id = aws_subnet.public-web-subnet.id
    private_ips = [ "172.32.0.155" ]
    security_groups = [ aws_security_group.maya-web-sg.id, aws_security_group.maya-web-all.id ]
    description = "Primary Network Interface Maya-Web-Test"
    tags = {
      "Name" = "Maya-Web-Test"
    }
}
resource "aws_network_interface" "eca-nic" {
    subnet_id = aws_subnet.private-app-subnet.id
    private_ips = [ "172.32.2.110" ]
    security_groups = [ aws_security_group.maya-eca-sg.id, aws_security_group.maya-app-all.id ]
    description = "Primary Network Interface Maya-Eca-Test"
    tags = {
      "Name" = "Maya-Eca-Test"
    }
}
resource "aws_network_interface" "admintoolbox-nic" {
    subnet_id = aws_subnet.private-app-subnet.id
    private_ips = [ "172.32.2.156" ]
    security_groups = [ aws_security_group.maya-admintoolbox-sg.id, aws_security_group.maya-app-all.id ]
    description = "Primary Network Interface Maya-Admintoolbox-Test"
    tags = {
      "Name" = "Maya-Admintoolbox-Test"
    }
}
resource "aws_network_interface" "cideployer-nic" {
    subnet_id = aws_subnet.private-app-subnet.id
    private_ips = [ "172.32.2.90" ]
    description = "Primary Network Interface Maya-Cideployer-Test"
    security_groups = [ aws_security_group.maya-cideployer-sg.id, aws_security_group.maya-app-all.id ]
    tags = {
      "Name" = "Maya-Cideployer-Test"
    }
}
resource "aws_eip_association" "web-eip-association" {
    network_interface_id = aws_network_interface.web-nic.id
    allocation_id = aws_eip.web-eip.id
    allow_reassociation = true
}
resource "aws_eip_association" "jump-eip-association" {
    network_interface_id = aws_network_interface.jump-nic.id
    allow_reassociation = true
    allocation_id = aws_eip.jump-eip.id
}