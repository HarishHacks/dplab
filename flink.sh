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
echo
echo "ENTER THE TEXT YOU WANT:"
read text
echo $text >input.txt
cd flink-1.19.1/
bin/stop-cluster.sh
bin/start-cluster.sh
bin/flink run examples/batch/WordCount.jar -input /home/ubuntu/input.txt -output /home/ubuntu/output.txt
echo "WORD COUNT SAVED IN /home/ubuntu/output.txt"
echo
echo "THANK YOU!"
