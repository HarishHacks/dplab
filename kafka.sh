#!/bin/bash
echo "APACHE KAFKA LAB INSTALLER"
echo
echo "INSTALLING JAVA"
sudo apt update
sudo apt install openjdk-11-jdk -y
echo
echo "INSTALLING Kafka"
wget https://downloads.apache.org/kafka/3.8.0/kafka-3.8.0-src.tgz
tar -xzf kafka-3.8.0-src.tgz
cd kafka-3.8.0-src/
./gradlew jar -PscalaVersion=2.13.14
echo
echo
echo "Starting zookeper"
sleep 3
bin/zookeeper-server-start.sh config/zookeeper.properties &
echo "Starting server"
sleep 3
bin/kafka-server-start.sh config/server.properties &
sleep 3
echo "THANK YOU!"
sleep 3
echo "THANK YOU!"
