variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}

variable "AWS_REGION" 
{
	default = "us-west-1"
}
variable "AMIS"
{
	default = "ami-06397100adf427136"
}
variable "INSTANCE_TYPE"
{
	default = "t2.micro"
}
variable "PATH_TO_PRIVATE_KEY"
{
	default="jaikey"
}
variable "PATH_TO_PUBLIC_KEY"
{
	default="jaikey.pub"
}
variable "INSTANCE_USERNAME"
{
	default = "ubuntu"
}
