#!/usr/bin/env bash
# Make sure this file is executable
# chmod a+x .github/script/create-hotfix-pr.sh

echo "Set committer details"
git config user.name github-actions[bot]
git config user.email github-actions[bot]@users.noreply.github.com

echo "Create fix branch"
git checkout main
FEATURE_BRANCH=fix/game-background
git checkout -b $FEATURE_BRANCH

echo "Make changes to files"
cp .github/changes/game-fixed.js game.js

echo "Commit file changes"
git add game.js
git commit -m "Set game background back to black"

echo "Push feature branch"
git push --set-upstream origin $FEATURE_BRANCH

echo "Restore main"
git checkout main