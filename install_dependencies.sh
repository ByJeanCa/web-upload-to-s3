#!/bin/bash

echo "Checking if Python is on the system..."
if ! command -v python3 > /dev/null 2>&1; then 
    echo "Installing Python..."
    sudo yum install python3 -y
    echo "Python installed"
else
    echo "Python already installed"
fi

echo "Checking if pip is on the system..."
if ! command -v pip3 > /dev/null 2>&1; then
    echo "Installing pip..."
    sudo yum install python3-pip -y
    echo "Pip installed"
else
    echo "Pip already installed"
fi

echo "Installing dependencies..."

pip3 install flask boto3 python-dotenv

echo "Dependencies successfully installed"
