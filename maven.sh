#!/bin/bash #shebang
cd /$HOME/
rm -rf /tmp/apache-maven*
wget https://dlcdn.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.tar.gz
APACHE=$(ls -l | grep apache-maven | awk '{print $9}')
tar vxfz $APACHE
rm -rf $APACHE
MAVEN_DIR=$(ls -ltr | grep apache-maven | awk '{print $9}')
echo "export MAVEN_HOME=/$HOME/$MAVEN_DIR" >> $HOME/.bash_profile
echo 'export PATH=$MAVEN_HOME/bin:$PATH' >> $HOME/.bash_profile
source $HOME/.bash_profile
echo "maven install sucessfully"
mvn --version
env
