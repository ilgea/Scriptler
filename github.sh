#!/bin/bash

# Define the GitHub repository URL
repo_url="https://github.com/clarusway/clarusway-aws-devops-12.git"

# Go to the local repository folder
cd /home/ilgea/GIT/clarusway-aws-devops-12

# Fetch the latest changes from the remote repository
git fetch origin

# Check if there are any changes in the remote repository
changes=$(git diff HEAD origin/main --name-only)

# If there are changes, pull the latest version
if [ -n "$changes" ]; then
  git pull origin main
  echo "The repository has been successfully pulled."
else
  echo "There are no changes in the repository."
fi
