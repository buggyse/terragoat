provider "aws" {  
 region = "eu-west-1"
}
resource "aws_db_instance" "example" {  
 engine            = "mysql"  
 instance_class    = "db.t2.micro"  
 allocated_storage = 10  
 name              = "exampledb"  
 username          = "exampleuser"  
 password          = "${var.db_password}"
}
variable "db_password" {}
