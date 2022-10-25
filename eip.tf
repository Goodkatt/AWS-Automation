resource "aws_eip" "jump-eip" {
   vpc = true
   tags = {
     "Name" = "Maya-Jump-Eip"
   }  
}
resource "aws_eip" "web-eip" {
   vpc = true
   tags = {
     "Name" = "Maya-Web-Eip"
   }  
}