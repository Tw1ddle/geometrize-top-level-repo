#!/bin/bash

# This finds all the git repositories under the current folder and attempts to pull them all

CUR_DIR=$(pwd)

echo "Pulling all repositories"

# Find all git repositories and update to the latest revision of master
for i in $(find . -name ".git" | cut -c 3-); do
    echo "";
    echo "$i";

    # Go to the .git parent directory to call the pull command
    cd "$i";
    cd ..;

    git pull origin master;

    cd $CUR_DIR
done

echo "Complete"