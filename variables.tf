// Module specific variables

variable "instance_name" {
  description = "Used to populate the Name tag. This is done in main.tf"
  default = "Terraformtest"
  
}

variable "instance_type" {
          default = "t2.micro"
          }

variable "ami_id" {
  description = "The AMI to use"
  default = "ami-18f8df7d"
}

variable "number_of_instances" {
  description = "number of instances to make"
  default = 2
}

variable "key_name" {
   description = "name of the key"
   default = "XXXXXXX"
}


// Variables for providers used in this module
variable "aws_access_key" 
{
 default = "XXXXXXXXXX" 
}
variable "aws_secret_key"
{
 default = "XXXXXXXXXX"
}
variable "aws_region" 
{
 default = "us-east-2"
}
