#execute in opt
echo "enter which version you are downloading"
read version
echo " enter the zip file you want "
read zip
wget $zip
unzip apache-maven-${version}-bin.zip
rm -rf apache-maven-${version}-bin.zip
echo "export PATH=$PATH:$M2_HOME/bin" >> ~/.bash_profile
echo "export PATH" >> ~/.bash_profile
echo "export M2_HOME=/opt/apache-maven-${version}" >> ~/.bash_profile
source ~/.bash_profile
mvn -version
#if doesnt work paste this code in ~/.bash_profile export PATH=$PATH:$M2_HOME
