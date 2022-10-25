//Sunucularda attachli olan Security Group'lara Jumptan izin için oluşturulan rulelar
resource "aws_security_group_rule" "myip-22-jump" {
 type = "ingress"
 from_port = 22
 to_port = 22
 protocol = "tcp"
 security_group_id = aws_security_group.maya-jump-sg.id
 cidr_blocks = [ "91.93.231.126/32" ]
 description = "Gorkem home"
}
resource "aws_security_group_rule" "etiya-22-jump" {
    type = "ingress"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    security_group_id = aws_security_group.maya-jump-sg.id
    cidr_blocks = [ "212.156.131.82/32" ]
    description = "Etiya VPN SSH"
}
resource "aws_security_group_rule" "jump-22-bss" {
    type = "ingress"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    security_group_id = aws_security_group.maya-bss-sg.id
    source_security_group_id = aws_security_group.maya-jump-sg.id
    description = "Jump Server SSH"
}
resource "aws_security_group_rule" "jump-22-csm" {
    type = "ingress"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    security_group_id = aws_security_group.maya-csm-sg.id
    source_security_group_id = aws_security_group.maya-jump-sg.id
    description = "Jump Server SSH"
}
resource "aws_security_group_rule" "jump-22-db" {
    type = "ingress"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    security_group_id = aws_security_group.maya-db-sg.id
    source_security_group_id = aws_security_group.maya-jump-sg.id
    description = "Jump Server SSH"
}
resource "aws_security_group_rule" "jump-22-oab" {
    type = "ingress"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    security_group_id = aws_security_group.maya-oab-sg.id
    source_security_group_id = aws_security_group.maya-jump-sg.id
    description = "Jump Server SSH"
}
resource "aws_security_group_rule" "jump-22-om" {
    type = "ingress"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    security_group_id = aws_security_group.maya-om-sg.id
    source_security_group_id = aws_security_group.maya-jump-sg.id
    description = "Jump Server SSH"
}
resource "aws_security_group_rule" "jump-22-web" {
    type = "ingress"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    security_group_id = aws_security_group.maya-web-sg.id
    source_security_group_id = aws_security_group.maya-jump-sg.id
    description = "Jump Server SSH"
}
resource "aws_security_group_rule" "jump-22-eca" {
    type = "ingress"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    security_group_id = aws_security_group.maya-eca-sg.id
    source_security_group_id = aws_security_group.maya-jump-sg.id
    description = "Jump Server SSH"
}
resource "aws_security_group_rule" "jump-22-admintoolbox" {
    type = "ingress"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    security_group_id = aws_security_group.maya-admintoolbox-sg.id
    source_security_group_id = aws_security_group.maya-jump-sg.id
    description = "Jump Server SSH"
}
resource "aws_security_group_rule" "jump-22-cideployer" {
    type = "ingress"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    security_group_id = aws_security_group.maya-cideployer-sg.id
    source_security_group_id = aws_security_group.maya-jump-sg.id
    description = "Jump Server SSH"
}
resource "aws_security_group_rule" "etiya-443-web" {
    type = "ingress"
    from_port = 443
    to_port = 443
    protocol = "tcp"
    security_group_id = aws_security_group.maya-web-sg.id
    cidr_blocks = [ "212.156.131.82/32" ]
    description = "Etiya VPN HTTPS"
}
resource "aws_security_group_rule" "jump-5432-db" {
    type = "ingress"
    from_port = 5432
    to_port = 5432
    protocol = "tcp"
    security_group_id = aws_security_group.maya-db-sg.id
    source_security_group_id = aws_security_group.maya-jump-sg.id
    description = "Jump to Db PostgreSQL Access"
}