#!/bin/bash




# Iterate through each subdirectory (Git repository)
for repo in */; do
    echo "Updating $repo"
    
    # Change into the repository
    cd "$repo"
    
    # Build the docker containers
    docker compose up --build -d &
    
    # Return to the parent directory for the next iteration
    cd ..
done
