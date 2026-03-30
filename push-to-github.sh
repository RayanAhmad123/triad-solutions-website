#!/bin/bash
# Run this script from the "Triad Solutions Website" folder to push to GitHub
# Usage: bash push-to-github.sh

set -e

echo "🚀 Setting up Triad Solutions Website Git repo..."

# Initialize git if not already done
if [ ! -d ".git" ]; then
  git init
  git branch -M main
fi

git config user.email "rayan.ahmad97@gmail.com"
git config user.name "RayanAhmad123"

# Stage all files
git add index.html assets/

# Commit
git commit -m "Initial commit: Triad Solutions landing page" || echo "Nothing new to commit."

# Set remote and push
git remote remove origin 2>/dev/null || true
git remote add origin https://github.com/RayanAhmad123/triad-solutions-website.git
git branch -M main
git push -u origin main

echo ""
echo "✅ Done! Visit: https://github.com/RayanAhmad123/triad-solutions-website"
