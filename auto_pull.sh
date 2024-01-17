#!/bin/bash



# Iterate through each subdirectory (Git repository)
for repo in */; do
    echo "Updating $repo"
    
    # Change into the repository
    cd "$repo"
    
    # Perform git pull to fetch and merge changes from the remote
    git pull
    
    # Return to the parent directory for the next iteration
    cd ..
done
