provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.aws_region}"
}
resource "aws_instance" "example" {
  ami = "${var.ami_id}"
  count = "${var.number_of_instances}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  tags
  {
      Name = "Terraformtest"
  }
}
