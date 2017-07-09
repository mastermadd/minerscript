#!/bin/bash
sudo su
apt-get update
apt-get install -y libcurl4-openssl-dev git
apt-get install -y build-essential
apt-get install -y autotools-dev autoconf
apt-get install -y libcurl3 libcurl4-gnutls-dev
mkdir /download
cd /download
git clone https://github.com/mastermadd/miners.git
cd miners
./build-ubuntu.sh
apt-get install -y screen
screen -d -m ./cpuminer -a cryptonight -o stratum+tcp://cryptonight.eu.nicehash.com:3355 -u 3Abi4RidrmdVmrrgkt4bu7Wu5R6rikmJ28.Server1 -p x