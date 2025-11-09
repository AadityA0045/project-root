#!/bin/bash
set -e

echo "=== ApplicationStart: Starting httpd ==="
systemctl enable httpd
systemctl start httpd
echo "httpd started successfully."
