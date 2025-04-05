#!/bin/bash
# Script to connect your local project to GitHub

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}===== Connecting your AI Waste Reusability project to GitHub =====${NC}"

# Step 1: Initialize git repository if not already initialized
echo -e "${GREEN}Initializing Git repository...${NC}"
if [ -d .git ]; then
    echo "Git repository already initialized."
else
    git init
    echo "Git repository initialized."
fi

# Step 2: Add all files to git
echo -e "${GREEN}Adding files to Git...${NC}"
git add .

# Step 3: Commit the files
echo -e "${GREEN}Committing files...${NC}"
echo "Enter a commit message (e.g., 'Initial commit of AI Waste Reusability project'):"
read commit_message
git commit -m "$commit_message"

# Step 4: Create GitHub repository
echo -e "${GREEN}To connect to GitHub, you need to:${NC}"
echo "1. Login to your GitHub account"
echo "2. Create a new repository named 'ai-waste-reusability' at https://github.com/new"
echo "3. Do NOT initialize the repository with a README, .gitignore, or license"
echo -e "${BLUE}Have you created the repository? (y/n)${NC}"
read created_repo

if [ "$created_repo" != "y" ]; then
    echo "Please create the repository and run this script again."
    exit 1
fi

# Step 5: Connect to GitHub remote
echo -e "${GREEN}Connecting to GitHub...${NC}"
echo "Enter your GitHub username:"
read github_username

echo "Enter your GitHub username:"
read github_username

# Add GitHub as remote origin dynamically
git remote add origin "https://github.com/$github_username/ai-waste-reusability.git"
echo "Remote origin added."


# Step 6: Push to GitHub
echo -e "${GREEN}Pushing code to GitHub...${NC}"
git branch -M main
git push -u origin main

echo -e "${BLUE}===== Project successfully connected to GitHub! =====${NC}"
echo "Your project is now available at:https://github.com/$github_username/ai-waste-reusability.git"

# Step 7: Instructions for GitHub Pages
echo -e "${GREEN}To deploy on GitHub Pages:${NC}"
echo "1. Go to your repository on GitHub"
echo "2. Click on 'Settings'"
echo "3. Scroll down to 'GitHub Pages' section"
echo "4. Select 'main' branch as source and click 'Save'"
echo "5. Your site will be published at: https://github.com/$github_username/ai-waste-reusability.git"
