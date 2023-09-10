#!/bin/sh

echo "***************************************"
echo "*********** Testing Jar **************"
echo "***************************************"

WORKSPACE=/home/jeevan/jenkins_home/workspace/pipeline-docker-maven

docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven "$@"
