//Sunucular için Security Grouplar(Inbound Rulelar boş sadece Full Outbound yetkili)
resource "aws_security_group" "maya-jump-sg" {
    name = "Maya-Jump"
    description = "Maya-Jump"
    vpc_id = aws_vpc.maya-vpc.id

    egress  {
        description = "Allow anywhere"
        from_port = 0
        protocol = "-1"
        to_port = 0
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "Maya-Jump"
    }
}
resource "aws_security_group" "maya-bss-sg" {
    name = "Maya-Bss-Test"
    description = "Maya-Bss-Test"
    vpc_id = aws_vpc.maya-vpc.id

    egress {
        description = "Allow anywhere"
        from_port = 0
        protocol = "-1"
        to_port = 0
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    tags = {
      "Name" = "Maya-Bss-Test"
    }
}
resource "aws_security_group" "maya-csm-sg" {
    name = "Maya-Csm-Test"
    description = "Maya-Csm-Test"
    vpc_id = aws_vpc.maya-vpc.id
    egress {
        description = "Allow anywhere"
        from_port = 0
        protocol = "-1"
        to_port = 0
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    tags = {
      "Name" = "Maya-Csm-Test"
    }
}
resource "aws_security_group" "maya-db-sg" {
    name = "Maya-Db-Test"
    description = "Maya-Db-Test"
    vpc_id = aws_vpc.maya-vpc.id
    egress {
        description = "Allow anywhere"
        from_port = 0
        protocol = "-1"
        to_port = 0
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    tags = {
      "Name" = "Maya-Db-Test"
    }
}
resource "aws_security_group" "maya-oab-sg" {
    name = "Maya-Oab-Test"
    description = "Maya-Oab-Test"
    vpc_id = aws_vpc.maya-vpc.id
    egress {
        description = "Allow anywhere"
        from_port = 0
        protocol = "-1"
        to_port = 0
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    tags = {
      "Name" = "Maya-Oab-Test"
    }
}
resource "aws_security_group" "maya-om-sg" {
    name = "Maya-Om-Test"
    description = "Maya-Om-Test"
    vpc_id = aws_vpc.maya-vpc.id
    egress {
        description = "Allow anywhere"
        from_port = 0
        protocol = "-1"
        to_port = 0
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    tags = {
      "Name" = "Maya-Om-Test"
    }
}
resource "aws_security_group" "maya-web-sg" {
    name = "Maya-Web-Test"
    description = "Maya-Web-Test"
    vpc_id = aws_vpc.maya-vpc.id
    egress {
        description = "Allow anywhere"
        from_port = 0
        protocol = "-1"
        to_port = 0
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    tags = {
      "Name" = "Maya-Web-Test"
    }
}
resource "aws_security_group" "maya-eca-sg" {
    name = "Maya-Eca-Test"
    description = "Maya-Eca-Test"
    vpc_id = aws_vpc.maya-vpc.id
    egress {
        description = "Allow anywhere"
        from_port = 0
        protocol = "-1"
        to_port = 0
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    tags = {
      "Name" = "Maya-Eca-Test"
    }
}
resource "aws_security_group" "maya-admintoolbox-sg" {
    name = "Maya-Admintoolbox-Test"
    description = "Maya-Admintoolbox-Test"
    vpc_id = aws_vpc.maya-vpc.id
    egress {
        description = "Allow anywhere"
        from_port = 0
        protocol = "-1"
        to_port = 0
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    tags = {
      "Name" = "Maya-Admintoolbox-Test"
    }
}
resource "aws_security_group" "maya-cideployer-sg" {
    name = "Maya-Cideployer-Test"
    description = "Maya-Cideployer-Test"
    vpc_id = aws_vpc.maya-vpc.id
    egress {
        description = "Maya-Cideployer-Test"
        from_port = 0
        protocol = "-1"
        to_port = 0
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    tags = {
      "Name" = "Maya-Cideployer-Test"
    }
}
resource "aws_security_group" "maya-app-all" {
    name = "Maya-App-All"
    description = "Maya-App-All"
    vpc_id = aws_vpc.maya-vpc.id
    egress {
        description = "Allow anywhere"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    tags = {
      "Name" = "Maya-App-All"
    }
}
resource "aws_security_group" "maya-db-all" {
    name = "Maya-Db-All"
    description = "Maya-Db-All"
    vpc_id = aws_vpc.maya-vpc.id
    egress {
        description = "Allow anywhere"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    tags = {
      "Name" = "Maya-Db-All"
    }
}
resource "aws_security_group" "maya-mgmt-all" {
    name = "Maya-Mgmt-All"
    description = "Maya-Mgmt-All"
    vpc_id = aws_vpc.maya-vpc.id
    egress {
        description = "Allow anywhere"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    tags = {
      "Name" = "Maya-Mgmt-All"
    }
}
resource "aws_security_group" "maya-web-all" {
    name = "Maya-Web-All"
    description = "Maya-Web-All"
    vpc_id = aws_vpc.maya-vpc.id
    egress {
        description = "Allow anywhere"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    tags = {
      "Name" = "Maya-Web-All"
    }
}