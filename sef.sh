#!/bin/bash

distro=$(lsb_release -si)

case $distro in
    "Ubuntu")
        echo "Vous utilisez Ubuntu."
        echo "Mise à jour des paquets..."
        sudo apt update && sudo apt upgrade -y
        sudo apt install apache2
        sudo systemctl start apache2
        sudo systemctl enable apache2
        
        ;;
    "Debian")
        echo "Vous utilisez Debian."
        echo "Mise à jour des paquets..."
        sudo apt update && sudo apt upgrade -y
        sudo apt install apache2
        sudo systemctl start apache2
        sudo systemctl enable apache2
        ;;
   "CentOS")
        echo "Vous utilisez CentOS."
        
        echo "Mise à jour des paquets..."
        sudo yum update -y
        sudo yum install httpd
        sudo systemctl start httpd
        sudo systemctl enable httpd
        ;;
    "Fedora")
        echo "Vous utilisez Fedora."
        
        echo "Mise à jour des paquets..."
        sudo dnf update -y
        sudo yum install httpd
        sudo systemctl start httpd
        sudo systemctl enable httpd
        ;;
    *)
        echo "Distribution non reconnue : $distro"
        ;;
esac
