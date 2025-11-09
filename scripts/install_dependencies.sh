#!/bin/bash
set -e

echo "=== AfterInstall: Installing/Updating httpd ==="

yum update -y
if ! command -v httpd >/dev/null 2>&1; then
  yum install -y httpd
else
  echo "httpd already installed"
fi

mkdir -p /var/www/html
chown -R root:root /var/www/html
chmod -R 755 /var/www/html

echo "Dependencies installed."
