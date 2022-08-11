#!/bin/bash

# prompt the user to give the title and the description of the commit
read -p "Enter the title of the commit: " TITLE
read -p "Enter the description: " DESCRIPTION

# add all the files and commit them to git
git add -A
git commit -am "{$TITLE}" -m "{$DESCRIPTION}"
git push
