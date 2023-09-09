#!/bin/sh

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASSWORD >> /tmp/.auth

sshpass -p 1234 scp /tmp/.auth jeevan_2@192.168.0.183:/tmp/.auth
sshpass -p 1234 scp ./jenkins/deploy/publish.sh jeevan_2@192.168.0.183:/tmp/publish.sh
sshpass -p 1234 ssh jeevan_2@192.168.0.183 /tmp/publish.sh
