#!/bin/bash

localCheckoutFolder="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )" ## The base folder to clone the Geometrize projects out to (defaults to the current directory the script is in)

## Base URL for cloning all projects
## You may wish to change this to your own account, or use HTTPS instead of SSH etc...
urlBase="git@github.com:Tw1ddle/"

## List of all the Geometrize project repository names
declare -a repoList=("geometrize" "geometrize-installer" "geometrize-docs" "geometrize-functional-tests" "geometrize-gallery" "geometrize-haxe"
 "geometrize-haxe-example" "geometrize-haxe-unit-tests" "geometrize-haxe-web" "geometrize-lib-docs" "geometrize-lib-example" "geometrize-lib-fuzzing"
 "geometrize-lib-unit-tests" "geometrize-resources" "geometrize-s3-bucket-downloader" "geometrize-screenshots" "geometrize-tween-optimizer" "geometrize-tweens"
 "geometrize-twitter-bot" "geometrize-twitter-bot-docs" "geometrize-website")

## Loop over the repositories and clone each one, initializing any submodules
repoListLength=${#repoList[@]}
for (( i=0; i<${repoListLength}; i++ ));
do
  repoName=${repoList[$i]}
  fullCheckoutPath=${localCheckoutFolder}/${repoName}
  
  if [ -d "$fullCheckoutPath" ]; then
    echo "Will skip cloning out ${repoName} because a folder with that name already exists"
	continue
  fi
  
  cloneCommand="git clone --recurse-submodules -j8 ${urlBase}${repoName} ${fullCheckoutPath}"
  echo "Will run clone command: ${cloneCommand}"
  ${cloneCommand}
done