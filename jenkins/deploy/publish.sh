#!/bin/sh

export IMAGE_NAME=$(sed -n '1p' /tmp/.auth)
export TAG=$(sed -n '2p' /tmp/.auth)
export PASSWORD=$(sed -n '3p' /tmp/.auth)

docker login -u jeevan2001 -p $PASSWORD

cd ~/maven && docker-compose up -d
