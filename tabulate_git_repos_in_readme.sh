#!/bin/bash

## This is just a utility script for creating the table of Geometrize-related repositories
## It prints a Markdown table of the git repositories in the folder and writes
## this to the project structure section of the repository README file.
## When adding new repos to the Geometrize project, add a description to the repoDescriptions array below

# Base URL for the site with all the code repositories in it
repoBaseUrl="https://github.com/Tw1ddle"

# Base URL for the automated build status provider
buildBadgeBaseUrl="https://ci.appveyor.com/api/projects/status/github/Tw1ddle"

# Base URL for the automated build project pages
buildSystemBaseUrl="https://ci.appveyor.com/project/Tw1ddle"

## List of all the Geometrize project repository names paired with descriptions for each one
declare -A repoDescriptions 
repoDescriptions["geometrize-top-level-repo"]="The top level Geometrize C++ repository and developer quickstart guide"
repoDescriptions["geometrize"]="The main Geometrize C++ desktop application repository. The submodules include translations, resources, sample images and scripts."
repoDescriptions["geometrize-installer"]="Installer and packaging code for the Geometrize C++ desktop application"
repoDescriptions["geometrize-docs"]="Developer documentation generation and hosting for the Geometrize C++ application"
repoDescriptions["geometrize-functional-tests"]="Automated tests for the Geometrize C++ application"
repoDescriptions["geometrize-gallery"]="Code repository and hosting for a collection of example geometrized images"
repoDescriptions["geometrize-haxe"]="The Geometrize Haxe library repository"
repoDescriptions["geometrize-haxe-demo"]="A HaxeFlixel-based demo of the Geometrize Haxe library"
repoDescriptions["geometrize-haxe-example"]="A minimal Haxe usage example of the Geometrize Haxe library"
repoDescriptions["geometrize-haxe-unit-tests"]="Unit tests for the Geometrize Haxe library"
repoDescriptions["geometrize-haxe-web"]="Code repository for the Geometrize Haxe web application"
repoDescriptions["geometrize-lib"]="The Geometrize C++ library repository."
repoDescriptions["geometrize-lib-docs"]="Developer documentation generation and hosting for the Geometrize C++ library"
repoDescriptions["geometrize-lib-example"]="A minimal C++ usage example of the Geometrize C++ library"
repoDescriptions["geometrize-lib-fuzzing"]="Fuzz tests for the Geometrize C++ library"
repoDescriptions["geometrize-lib-unit-tests"]="Unit tests for the Geometrize C++ library"
repoDescriptions["geometrize-resources"]="A collection of curated resources e.g. public domain images, for use with Geometrize"
repoDescriptions["geometrize-s3-bucket-downloader"]="A frontend for downloading Geometrize installers (from an Amazon S3 bucket)"
repoDescriptions["geometrize-screenshots"]="Hosting for a set of screenshots showing different parts of the Geometrize C++ application"
repoDescriptions["geometrize-tween-optimizer"]="A tool for creating visually appealing tweens between sets of geometric primitives"
repoDescriptions["geometrize-tweens"]="A web-based demo showing tweens between media composed of geometric primitives"
repoDescriptions["geometrize-twitter-bot"]="A Twitter bot that geometrizes images found on Twitter, and tweets the results"
repoDescriptions["geometrize-twitter-bot-docs"]="Developer documentation generation and documentation hosting for the Geometrize Twitter bot"
repoDescriptions["geometrize-website"]="A user-facing website and landing page for the Geometrize project"

echo ""
echo "Creating table of the git repositories in and under the current working directory"
echo ""
echo ""
echo ""

# Start building the table text
tableText=""
newLine=$'\n'

tableText+="| Repository Name                   | Description | Automated Build Status |"
tableText+=${newLine}
tableText+="| --------------------------------- | ----------- | ---------------------- |"
tableText+=${newLine}

printf "%s" "${tableText}"

## The paths to all the .git files in the repo, essentially the root folders + .git for where all the git repos are
relativePathsToDotGitFiles="$( find . -name .git -type d -prune )"
for dotGitPath in ${relativePathsToDotGitFiles}
do
  relativeFolderPath=${dotGitPath%.*} ## Remove the .git from the end of the path

  pushd "$relativeFolderPath" > /dev/null
  
  ## Get the repo (folder) name
  repoName="${PWD##*/}"
  
  repoLink="[$repoName]($repoBaseUrl/$repoName)"
  
  buildBadge="[![Build Status Badge]($buildBadgeBaseUrl/$repoName)]($buildSystemBaseUrl/$repoName)"
  
  ## Get the submodule names for the repo
  ## Not including this at the moment, it's too slow, and the submodules are described in the main table anyway
  #git submodule--helper list ## Print out the submodule names for this repository (non-recursive)
  #git submodule status --recursive ## Print out the submodule names for this repository (recursive)
  #submoduleNames="$(git submodule | awk '{ print $2 }')"
  
  tableRow="| "${repoLink}" | "${repoDescriptions[$repoName]}" | "${buildBadge}" |"
  echo ${tableRow}
  
  tableText+=${newLine}
  tableText+="${tableRow}"

  popd > /dev/null
done

outText="TABLE-BEGINS"
outText+=${newLine}${newLine}
outText+="${tableText}"
outText+=${newLine}${newLine}
outText+="TABLE-ENDS"

# Replaces the table in the README.md file contents with the new one built above 
replacedReadmeText="$( awk -v RS='TABLE-BEGINS.*TABLE-ENDS' -v ORS= '1;NR==1{printf "REMOVED_TABLE"}' README.md )"

replacedReadmeText="${replacedReadmeText/REMOVED_TABLE/$outText}"

echo ""
echo ""
echo "Overwriting README.md with the following new updated text/table"
echo ""
echo ""
echo "${replacedReadmeText}" | tee 'README.md'