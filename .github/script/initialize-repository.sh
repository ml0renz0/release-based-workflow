#!/usr/bin/env bash
# Make sure this file is executable
# chmod a+x .github/script/initialize-repository.sh

echo "Set committer details"
git config user.name github-actions[bot]
git config user.email github-actions[bot]@users.noreply.github.com

echo "Create develop branch"
DEVELOP_BRANCH=develop
git checkout main
git checkout -b $DEVELOP_BRANCH

echo "Push develop branch"
git commit --allow-empty --message="Empty commit to initialize branch"
git push --set-upstream origin $DEVELOP_BRANCH

echo "Create feature branch"
git checkout main
FEATURE_BRANCH=feature/update-text-colors
git checkout -b $FEATURE_BRANCH

echo "Make changes to files"
cp .github/changes/engine.js engine.js
cp .github/changes/game-with-bug.js game.js

echo "Commit file changes"
git add engine.js game.js
git commit -m "Changed game text colors to green"

echo "Push feature branch"
git push --set-upstream origin $FEATURE_BRANCH

echo "Restore main"
git checkout main