#!/bin/bash

echo "Checking if python is on the system"
if ! command -v python3 > dev/null/2>&1; then 
    echo "Installing Python"
    yum install python3 -y
echo "Python installed"

echo "Checking if pip is on the system"
if ! command -v pip > dev/null/2&1; then
    echo "Installing Python"
    yum install pip
echo "Pip installed"

echo "Installing dependencies..."

pip install flask boto3
pip install python-dotenv 

echo "Dependencies sucessfully installed"

