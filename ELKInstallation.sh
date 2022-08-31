#!/bin/bash
## Installation Guide for setting up Elastic Search, LogStash, and Kibana with configuration steps detailed ##

## Update System
sudo apt update

## Install wget if not present
sudoapt-get install wget -y

## Download and Install Elastic public signing key
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -

## Install apt-transport-https package
sudo apt install apt-transport-https -y 

## Save directory definitions
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list

## Update and Install ElasticSearch, LogStash, and Kibana
sudo apt-get update && sudo apt-get install elasticsearch && sudo apt-get install logstash && sudo apt-get install kibana

sudo su
nano /etc/elasticsearch/elasticsearch.yml

## Change Cluster Name
#cluster.name: maxleyhouse.elk  

## Give the node a descriptive name
#node.name: elk-1

## Change Network Binding
#network.host: 0.0.0.0  
 
##setup discovery.type as single node
#discovery.type: single-node 

#Start Elastic Service
sudo systemctl start elasticsearch

## Validate cluster health
curl -XGET http://localhost:9200/_cluster/health?pretty

## Configure Kibana
nano /etc/kibana/kibana.yml

##comment server.port
#server.port: 5601

##server base url however this needs to be corrected everytime you start and stop the server
#server.publicBaseUrl: "http://192.168.1.3:5601/"

##change server.host
#server.host: "0.0.0.0"

##change server.name
#server.name: "demo-kibana"

##uncomment elasticsearch.host
#elasticsearch.hosts: ["http://localhost:9200"]

## Start Kibana Service
systemctl start kibana

systemctl enable elasticsearch
systemctl enable kibana
