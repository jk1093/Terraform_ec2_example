resource "aws_key_pair" "jaikey" {
	key_name = "jaikey"
	public_key = "${file("${var.PATH_TO_PUBLIC_KEY}")}"
}
resource "aws_instance" "nginx" {
	ami = "${var.AMIS}"
	instance_type = "${var.INSTANCE_TYPE}"
	key_name = "${aws_key_pair.jaikey.key_name}"
	
provisioner "file" {
    source = "scriptnginx.sh"
    destination = "/tmp/scriptnginx.sh"
  }
  provisioner "remote-exec" {
	inline = ["sudo apt-get -y update"]
	}
  provisioner "remote-exec" {
	inline = ["sudo apt-get -y upgrade"]
	}
  provisioner "remote-exec" {
	inline = ["sudo apt-get install dos2unix"]
	}
  provisioner "remote-exec" {
	inline = ["sudo dos2unix /tmp/scriptnginx.sh"]
	}
  provisioner "remote-exec" {
    inline = [
	  "chmod +x /tmp/scriptnginx.sh",
      "sudo /tmp/scriptnginx.sh"
    ]
  }
	connection {
		user = "${var.INSTANCE_USERNAME}"
		private_key = "${file("${var.PATH_TO_PRIVATE_KEY}")}"
	}
}
