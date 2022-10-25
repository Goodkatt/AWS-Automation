resource "aws_security_group_rule" "etiya-22-app-all" {
    type = "ingress"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    security_group_id = aws_security_group.maya-app-all.id
    cidr_blocks = [ "212.156.131.82/32" ]
    description = "Etiya VPN SSH"
}