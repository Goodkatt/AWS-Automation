
variable "availabitiy-zone" {
  type = string
  default = "eu-west-3"
}
variable "default-network-acl" {
    type = string
    default = "acl-05e7388088b6ef8e1"
}
variable "az-3a" {
  type = string
  default = "eu-west-3a"
}
variable "arm64-ami" {
  type = string
  default = "ami-0371124a0f6ca59b4" 
}
variable "bss-type" {
//4cpu 16memory
  type = string
  default = "m6g.xlarge" 
}
variable "csm-type" {
//2cpu 4memory
  type = string
  default = "c6g.large"
}
variable "db-type" {
//4cpu 16memory
  type = string
  default = "m6g.xlarge"  
}
variable "oab-type" {
//4cpu 8memory
 type = string
 default = "c6g.xlarge" 
}
variable "om-type" {
//4cpu 8memory
  type = string
  default = "c6g.xlarge" 
}
variable "web-type" {
//2cpu 4memory
  type = string
  default = "c6g.large"
}
variable "eca-type" {
//2cpu 4memory  
  type = string
  default = "c6g.large"
}
variable "admintoolbox-type" {
//2cpu 4memory
  type = string
  default = "c6g.large"
}
variable "cideployer-type" {
//2cpu 4memory
  type = string
  default = "c6g.large"
}
variable "jump-type" {
//2cpu 4memory
  type = string
  default = "t4g.medium"  
}
variable "ansible-type" {
//1cpu 2memory
  type = string
  default = "c6g.medium"  
}
variable "maya-keypair" {
  type = string
  default = "maya" 
}
