provider "aws" {
    region = "eu-west-3"
    access_key = var.access_key
    secret_key = var.access_key_id
}

//VPC
resource "aws_vpc" "maya-vpc" {
   cidr_block = "172.32.0.0/16"
   instance_tenancy = "default"
   enable_dns_hostnames = true
   tags = {
     "Name" = "Maya-VPC"
   }
}

//Internet GW
resource "aws_internet_gateway" "vpc-internet-gateway" {
   vpc_id = aws_vpc.maya-vpc.id
   tags = {
     "Name" = "Maya-InternetGW"
   }
}
//Subnet
//App Subnet
resource "aws_subnet" "private-app-subnet" {
   vpc_id = aws_vpc.maya-vpc.id
   cidr_block = "172.32.2.0/24"
   map_public_ip_on_launch = false
   assign_ipv6_address_on_creation = false
   availability_zone = var.az-3a
   tags = {
     "Name" = "Maya-Private-App-Zone1"
   }
}
//DB Subnet
resource "aws_subnet" "private-db-subnet" {
   vpc_id = aws_vpc.maya-vpc.id
   cidr_block = "172.32.4.0/24"
   map_public_ip_on_launch = false
   assign_ipv6_address_on_creation = false
   availability_zone = var.az-3a
   tags = {
     "Name" = "Maya-Private-Db-Zone1"
   }
}
//Mgmt Subnet
resource "aws_subnet" "private-mgmt-subnet" {
   vpc_id = aws_vpc.maya-vpc.id
   cidr_block = "172.32.6.0/24"
   map_public_ip_on_launch = false
   assign_ipv6_address_on_creation = false
   availability_zone = var.az-3a
   tags = {
     "Name" = "Maya-Private-Mgmt-Zone1"
   }
}
//Web Subnet
resource "aws_subnet" "public-web-subnet" {
   vpc_id = aws_vpc.maya-vpc.id
   cidr_block = "172.32.0.0/24"
   map_public_ip_on_launch = true
   assign_ipv6_address_on_creation = false
   availability_zone = var.az-3a
   tags = {
     "Name" = "Maya-Public-Web-Zone1"
   }
}
//Elastic IP for Private Zones to use in NatGW
resource "aws_eip" "private-zone-eip-natgw" {
   vpc = true
   tags = {
     "Name" = "Maya-VPC-NatGW"
   }  
}
//Create NatGW
resource "aws_nat_gateway" "private-zone-natgw" {
   allocation_id = aws_eip.private-zone-eip-natgw.id
   subnet_id = aws_subnet.public-web-subnet.id
   tags = {
     "Name" = "Maya-VPC-NatGW"
   }
}
//Private Route Table Private Zone
resource "aws_route_table" "private-zone-route-table" {
   vpc_id = aws_vpc.maya-vpc.id
   route {
      cidr_block = "0.0.0.0/0"
      nat_gateway_id = aws_nat_gateway.private-zone-natgw.id
   }
   tags = {
     "Name" = "Private-Route-Table"
   }
}
resource "aws_route_table" "public-zone-route-table" {
   vpc_id = aws_vpc.maya-vpc.id
   route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.vpc-internet-gateway.id
   }
      tags = {
     "Name" = "Public-Route-Table"
   }
}
//Associate Private Route Table with Private Subnets
resource "aws_route_table_association" "a1" {
   subnet_id = aws_subnet.private-app-subnet.id
   route_table_id = aws_route_table.private-zone-route-table.id
}
resource "aws_route_table_association" "a2" {
   subnet_id = aws_subnet.private-db-subnet.id
   route_table_id = aws_route_table.private-zone-route-table.id
}
resource "aws_route_table_association" "a3" {
   subnet_id = aws_subnet.private-mgmt-subnet.id
   route_table_id = aws_route_table.private-zone-route-table.id
}
//Associate Public Route Table with Public Subnet
resource "aws_route_table_association" "a4" {
   subnet_id = aws_subnet.public-web-subnet.id
   route_table_id = aws_route_table.public-zone-route-table.id
}
//Main Route Table Association
resource "aws_main_route_table_association" "a" {
   vpc_id = aws_vpc.maya-vpc.id
   route_table_id = aws_route_table.public-zone-route-table.id
}









































































