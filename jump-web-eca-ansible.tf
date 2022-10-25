resource "aws_security_group_rule" "ansible-22-web" {
    type = "ingress"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    security_group_id = aws_security_group.maya-web-sg.id
    source_security_group_id = aws_security_group.maya-ansible-sg.id
    description = "Ansible SSH Access"
}
resource "aws_security_group_rule" "ansible-22-eca" {
    type = "ingress"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    security_group_id = aws_security_group.maya-eca-sg.id
    source_security_group_id = aws_security_group.maya-ansible-sg.id
    description = "Ansible SSH Access"
}
resource "aws_security_group_rule" "ansible-22-jump" {
    type = "ingress"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    security_group_id = aws_security_group.maya-jump-sg.id
    source_security_group_id = aws_security_group.maya-ansible-sg.id  
    description = "Ansible SSH Access"
}
resource "aws_security_group_rule" "ansible-22-db" {
    type = "ingress"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    security_group_id = aws_security_group.maya-db-sg.id
    source_security_group_id = aws_security_group.maya-ansible-sg.id  
    description = "Ansible SSH Access"
}
resource "aws_security_group_rule" "ansible-22-bss" {
    type = "ingress"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    security_group_id = aws_security_group.maya-bss-sg.id
    source_security_group_id = aws_security_group.maya-ansible-sg.id  
    description = "Ansible SSH Access"
}
resource "aws_security_group_rule" "ansible-22-cideployer" {
    type = "ingress"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    security_group_id = aws_security_group.maya-cideployer-sg.id
    source_security_group_id = aws_security_group.maya-ansible-sg.id  
    description = "Ansible SSH Access"
}
resource "aws_security_group_rule" "ansible-22-csm" {
    type = "ingress"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    security_group_id = aws_security_group.maya-csm-sg.id
    source_security_group_id = aws_security_group.maya-ansible-sg.id  
    description = "Ansible SSH Access"
}
resource "aws_security_group_rule" "ansible-22-oab" {
    type = "ingress"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    security_group_id = aws_security_group.maya-oab-sg.id
    source_security_group_id = aws_security_group.maya-ansible-sg.id  
    description = "Ansible SSH Access"
}
resource "aws_security_group_rule" "ansible-22-om" {
    type = "ingress"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    security_group_id = aws_security_group.maya-om-sg.id
    source_security_group_id = aws_security_group.maya-ansible-sg.id  
    description = "Ansible SSH Access"
}
resource "aws_security_group_rule" "ansible-22-admintoolbox" {
    type = "ingress"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    security_group_id = aws_security_group.maya-admintoolbox-sg.id
    source_security_group_id = aws_security_group.maya-ansible-sg.id  
    description = "Ansible SSH Access"
}