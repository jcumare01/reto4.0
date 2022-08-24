#!/bin/bash
sudo yum update -y
sudo yum -y install httpd
sudo service httpd start
sudo mkdir cliente1
sudo chown ec2-user cliente1
sudo chmod -R o+r cliente1
cd cliente1/
echo "<html><h1>Hello from Amazon EFS</h1></html>" > hello.html