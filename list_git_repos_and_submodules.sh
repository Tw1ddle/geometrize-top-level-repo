#!/bin/bash

## Prints a listing of the git repositories and submodules. This is just a snippet
## for creating the list of repositories and descriptions included in README.md
echo "Printing listing of the git repositories and submodules in and under the current working directory"
echo ""

## The paths to all the .git files in the repo, essentially the root folders + .git for where all the git repos are
relativePathsToDotGitFiles="$( find . -name .git -type d -prune )"

for dotGitPath in ${relativePathsToDotGitFiles}
do
  relativeFolderPath=${dotGitPath%.*} ## Remove the .git from the end of the path

  pushd "$relativeFolderPath" > /dev/null
  
  ## Print the repo (folder) name
  
  repoName="${PWD##*/}"
  echo ${repoName}
  
  ## Print the submodule names for the repo
  
  #git submodule--helper list ## Print out the submodule names for this repository (non-recursive)
  #git submodule status --recursive ## Print out the submodule names for this repository (recursive)
  git submodule | awk '{ print $2 }' | sed 's/^/    /'
  echo "-------------------------------------------------"

  popd > /dev/null
done