echo "enter the main version"
read main
echo "enter full version"
read ver
wget https://mirrors.estointernet.in/apache/tomcat/tomcat-${main}/v${ver}/bin/apache-tomcat-${ver}.zip
unzip apache-tomcat-${ver}.zip
rm -rf apache-tomcat-${ver}.zip

ln -s /opt/apache-tomcat-10.0.5/bin/startup.sh  /usr/bin/startTomcat
ln -s /opt/apache-tomcat-10.0.5/bin/shutdown.sh  /usr/bin/stopTomcat
startTomcat

