#!/bin/bash
yum update -y
yum install -y nginx
systemctl start nginx
systemctl enable nginx
echo "<h1>Welcome to Jenkins CI/CD Deployment</h1>" > /usr/share/nginx/html/index.html
