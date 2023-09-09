#!/bin/sh

echo "****************************************"
echo "************ Pushing Image *************"
echo "****************************************"

IMAGE="maven-project"
echo "*********** Logging In ****************"
docker login -u jeevan2001 -p $PASSWORD

echo "************ TAGGING IMAGE *************"
docker tag $IMAGE:$BUILD_TAG jeevan2001/$IMAGE:$BUILD_TAG

echo "************ Pushing Image *************"
docker push jeevan2001/$IMAGE:$BUILD_TAG
