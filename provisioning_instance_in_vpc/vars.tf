variable "AWS_REGION"
{
	default = "us-east-1"
}
variable "PATH_TO_PRIVATE_KEY"
{
	default = "jaikey"
}
variable "PATH_TO_PUBLIC_KEY"
{
	default = "jaikey.pub"
}
variable "AMIS"
{
	type = "map"
	default = {
		us-west-1 = "ami-06397100adf427136"
		us-east-1 = "ami-0a313d6098716f372"
		}
}
