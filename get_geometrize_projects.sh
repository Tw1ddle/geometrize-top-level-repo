#!/bin/bash

localCheckoutFolder="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )" ## The base folder to check the Geometrize projects out to (defaults to the current directory the script is in)

urlBase="git@github.com:Tw1ddle/" ## Base URL for checking out all projects (from my account on GitHub)

## List of all the Geometrize project repository names
declare -a repoList=("geometrize" "geometrize-docs" "geometrize-functional-tests" "geometrize-gallery" "geometrize-haxe"
 "geometrize-haxe-example" "geometrize-haxe-unit-tests" "geometrize-haxe-web" "geometrize-lib-docs" "geometrize-lib-example" "geometrize-lib-fuzzing"
 "geometrize-lib-unit-tests" "geometrize-resources" "geometrize-s3-bucket-downloader" "geometrize-screenshots" "geometrize-tween-optimizer" "geometrize-tweens"
 "geometrize-twitter-bot" "geometrize-twitter-bot-docs" "geometrize-website")

## Loop over the repositories and check each one out, initializing any submodules
repoListLength=${#repoList[@]}
for (( i=0; i<${repoListLength}; i++ ));
do
  repoName=${repoList[$i]}
  checkoutCommand="git clone --recurse-submodules -j8 ${urlBase}${repoName} ${localCheckoutFolder}/${repoName}"
  echo "Will run checkout command: ${checkoutCommand}"
  ${checkoutCommand}
done