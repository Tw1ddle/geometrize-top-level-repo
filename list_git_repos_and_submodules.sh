#!/bin/bash

## Prints a Markdown table of the git repositories and submodules in the folder. This is just a snippet
## for creating the table of repositories and descriptions to include in README.md
repoBaseUrl="https://github.com/Tw1ddle"

echo ""
echo "Printing listing of the git repositories and submodules in and under the current working directory"
echo ""
echo ""
echo ""

echo "| Repository Name | Submodule Names |"
echo "| --------------- | --------------- |"

## The paths to all the .git files in the repo, essentially the root folders + .git for where all the git repos are
relativePathsToDotGitFiles="$( find . -name .git -type d -prune )"
for dotGitPath in ${relativePathsToDotGitFiles}
do
  relativeFolderPath=${dotGitPath%.*} ## Remove the .git from the end of the path

  pushd "$relativeFolderPath" > /dev/null
  
  ## Get the repo (folder) name
  repoName="${PWD##*/}"
  
  repoLink="[$repoName]($repoBaseUrl/$repoName)"
  
  ## Get the submodule names for the repo
  #git submodule--helper list ## Print out the submodule names for this repository (non-recursive)
  #git submodule status --recursive ## Print out the submodule names for this repository (recursive)
  submoduleNames=$(git submodule | awk '{ print $2 }')
  
  echo "| "${repoLink}" | "${submoduleNames}" |"

  popd > /dev/null
done

echo ""