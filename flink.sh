#!/bin/bash
echo "APACHE FLINK LAB INSTALLER"
echo
echo "INSTALLING JAVA"
sudo apt update
sudo apt install openjdk-11-jdk -y
echo
echo "INSTALLING FLINK"
if [ ! -e flink-1.19.1 ]
then
wget https://dlcdn.apache.org/flink/flink-1.19.1/flink-1.19.1-bin-scala_2.12.tgz
tar -xzf flink-1.19.1-bin-scala_2.12.tgz
fi
cd flink-1.19.1/
bin/start-cluster.sh
echo "THANK YOU!"
