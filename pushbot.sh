#!/bin/bash

# --- Configuration ---
# We use the $HOME variable for a more reliable path
PROJECT_DIR="$HOME/deploybot-project"
GIT_REMOTE_URL="git@github.com:Devsathome/ai-powered-cicd-pipeline.git"
BRANCH_NAME="main"

# --- Logic ---

# 1. Navigate to the project directory
echo "Changing directory to $PROJECT_DIR"
cd "$PROJECT_DIR" || { echo "Project directory not found at $PROJECT_DIR"; exit 1; }

# 2. Initialize Git on the very first run if it's not already a git repo
if [ ! -d .git ]; then
  echo "Initializing new Git repository..."
  git init
  git branch -M $BRANCH_NAME
  git remote add origin $GIT_REMOTE_URL
fi

# 3. Add all changes to staging
git add .

# 4. Check if there are any staged changes to commit
if git diff --staged --quiet; then
  echo "No changes to commit. Working tree clean."
  exit 0 # Exit the script successfully
fi

# 5. Create a commit message with the current date and time
COMMIT_MSG="Automated commit: $(date +'%Y-%m-%d %H:%M:%S')"
git commit -m "$COMMIT_MSG"
echo "Committed changes with message: $COMMIT_MSG"

# 6. Push the changes to GitHub
echo "Pushing changes to origin/$BRANCH_NAME..."
git push origin $BRANCH_NAME

echo "Script finished successfully."
