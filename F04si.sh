#!/bin/bash -e  # Exit immediately if any command fails
bash "/c/users/coddington/Dropbox (Personal)/Msc/Gen/WebStuff/_gitscripts/F04.sh"  # Execute F03.sh first
rm -rf .git  # Remove any existing Git repository
git init  # Initialize a new Git repository
git branch -m master main  # Rename master branch to main
git remote add origin https://GitHub.com/JACoddington/Feiners.git  # Add remote repository
git remote -v  # Verify remote repository
git add .  # Stage all files
git commit -m "Initial commit"  # Commit changes
git push --force --set-upstream origin main  # Force push local repository to GitHub, overwriting remote