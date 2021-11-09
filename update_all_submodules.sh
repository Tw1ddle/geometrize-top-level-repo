#!/bin/bash

# This finds all the git repositories under the current folder and attempts to update all the submodules

CUR_DIR=$(pwd)

echo "Pulling all repositories"

for i in $(find . -name ".git" | cut -c 3-); do
    echo "";
    echo "$i";

    # Go to the .git parent directory to call the submodule update command
    cd "$i";
    cd ..;

    git submodule update --recursive --remote;

    cd $CUR_DIR
done

echo "Complete"