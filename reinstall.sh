# !/bin/bash

cp ~/join/myaddr.txt ~/myaddr.txt
cp ~/join/mykey.txt ~/mykey.txt
cp ~/join/constants.xml ~/constants.xml
sudo docker stop zilliqa
sudo rm -rf ~/join/
mkdir ~/join
cd ~/join
wget https://mainnet-join.zilliqa.com/configuration.tar.gz
tar zxvf configuration.tar.gz
cp ~/myaddr.txt ~/join/myaddr.txt 
cp ~/mykey.txt ~/join/mykey.txt 
cp ~/constants.xml ~/join/constants.xml 
./launch_docker.sh 

