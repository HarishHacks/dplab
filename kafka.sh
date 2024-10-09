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
echo "THANK YOU!"
