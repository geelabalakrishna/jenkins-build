#!/bin/bash #shebang
cd /tmp/
rm -rf /tmp/apache-maven*
wget https://dlcdn.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.tar.gz
APACHE=$(ls -l | grep apache-maven | awk '{print $9}')
tar vxfz $APACHE
rm -rf $APACHE
MAVEN_DIR=$(ls -ltr | grep apache-maven | awk '{print $9}')
export MAVEN_HOME=/tmp/$MAVEN_DIR
export PATH=$MAVEN_HOME/bin:$PATH
echo "maven install sucessfully"
mvn --version
env
