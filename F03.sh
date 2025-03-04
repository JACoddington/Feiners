#!/bin/bash -e            # Use bash shell and exit immediately if a command exits with a non-zero status
#!run bash "/c/AA/Dropbox\ (Personal)/Msc/Gen/WebStuff/_gitscripts/F03.sh"
cd /c/AA/Dropbox\ \(Personal\)/Msc/Gen/WebStuff/WebLeg10/Feiners  # Change directory to the specified path
rm -rf .git               # Remove the existing .git directory forcefully and recursively
git init                  # Initialize a new Git repository
git branch -m master main # Rename the default branch from 'master' to 'main'
git remote add origin https://GitHub.com/JACoddington/Feiners.git  # Add a new remote repository URL
git remote -v             # Verify the remote repository details
git add .                 # Add all files to the staging area
git commit -m "Initial commit" # Commit the added files with the message "Initial commit"
git fetch origin          # Fetch changes from the remote repository
git reset --hard origin/main # Reset local branch to match the remote branch
git add .                 # Add all local changes
git commit -m "Apply local changes" # Commit local changes
git push --set-upstream origin main # Set upstream branch and push the changes
git push --force          # Forcefully push the changes to the remote repository
