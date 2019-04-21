variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION"
{
	default = "us-west-1"
}
variable "AMIS"
{
	type = "map"
	default = {
		us-east-1 = "ami-0ac019f4fcb7cb7e6"
		us-west-1 = "ami-06397100adf427136"
		}
}	

