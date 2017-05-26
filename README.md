# Terraform_ec2_example
Terraform_ec2_example
ec2_instance terraform module

A terraform module for making ec2 instances.


Module Input Variables

ami_id - The AMI to use
number_of_instances - The number of instances you want made
instance_type - The EC2 instance type, e.g. m1.small
instance_name - The instance name you want, this is used to populate the Name tag.
tags - A map for setting AWS tags.


You can use this in your terraform template with the following steps.

Adding a module resource to your template, e.g. main.tf
module "ec2_instance" {
  source = "github.com/terraform-community-modules/tf_aws_ec2_instance"
  instance_type = "${var.instance_type}"
  instance_name = "${var.instance_name}"
  ami_id = "${var.ami_id}"
  aws_access_key = "${var.aws_access_key}"
  aws_secret_key = "${var.aws_secret_key}"
  aws_region = "${var.aws_region}"
  subnet_id = "${var.subnet_id}"
  number_of_instances = "${var.number_of_instances}"
  user_data = "${var.user_data}"
}
Setting values for the following variables, either through terraform.tfvars or -var arguments on the CLI
aws_access_key
aws_secret_key
aws_region
instance_name
instance_type
subnet_id
ami_id
number_of_instances
