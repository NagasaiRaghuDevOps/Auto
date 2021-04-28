#Pre download a java.tar.gz file into opt directory
#switch to root user before executing
#only works for java 1.8.0_291
echo "enter the tar file you want to extract"
read zip
tar -zxvf /opt/$zip
echo "export JAVA_HOME=/opt/jdk1.8.0_291" >> /etc/profile
echo "export PATH=$PATH:$JAVA_HOME/bin/" >> /etc/profile
source /etc/profile
java -version
echo "java Successfully Installed"
#if the code doesnt work pasthe this in /etc/profile export PATH=$PATH:$JAVA_HOME/bin
