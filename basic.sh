"What do you want to install?"
read inst
sudo yum install $inst -y
echo "Instlling Development Tools"
sudo yum groupinstall "Development Tools" -y
echo "Installing AWS Tools"
sudo yum groupinstall "AWS Tools" -y 
