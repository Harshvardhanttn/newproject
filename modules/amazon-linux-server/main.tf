resource "aws_instance" "amazon-linux" {
     ami = data.aws_ami.amazon-linux.id
     instance_type =  "t2.micro"

     tags = {
        Name = "amazon-linux-server"
     } 
     user_data = <<EOF
#!/bin/bash
apt-get update
apt-get install nginx
echo "Hi this is your public or private ip" >/var/www/html/index.html
EOF
}