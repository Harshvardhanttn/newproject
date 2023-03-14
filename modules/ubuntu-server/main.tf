resource "aws_instance" "ubuntu-server" {
     ami = data.aws_ami.ubuntu.id
     instance_type =  "t2.micro"

     tags = {
        Name = "ubuntu-server"
     } 
     user_data = <<EOF
#!/bin/bash
apt-get update
apt-get install nginx
echo "Hi this is your public or private ip" >/var/www/html/index.html
EOF
}