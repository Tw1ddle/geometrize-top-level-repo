#!/bin/bash

## Script to check out all of the Geometrize project repositories

localFolderBase="TODO"
sshUrlBase="git@github.com:Tw1ddle/"

## List of all the Geometrize project repo names
declare -a repoList=("geometrize" "geometrize-docs" "geometrize-functional-tests", "geometrize-gallery", "geometrize-haxe",
 "geometrize-haxe-example", "geometrize-haxe-unit-tests", "geometrize-haxe-web", "geometrize-lib-docs", "geometrize-lib-example", "geometrize-lib-fuzzing",
 "geometrize-lib-unit-tests", "geometrize-resources", "geometrize-s3-bucket-downloader", "geometrize-screenshots", "geometrize-tween-optimizer", "geometrize-tweens",
 "geometrize-twitter-bot", "geometrize-twitter-bot-docs", "geometrize-website")

## Loop over repositories
repoListLength=${#repoList[@]}
for (( i=0; i<${repoListLength}; i++ ));
do
  repoName=${repoList[$i]}
  git clone ${sshUrlBase}${repoName}.git ${localFolderBase}${repoName}
done