#!/usr/bin/env bash
# Make sure this file is executable
# chmod a+x .github/script/initialize-repository.sh

echo "Set committer details"
git config user.name github-actions[bot]
git config user.email github-actions[bot]@users.noreply.github.com

COURSE_BRANCH=curso
RELEASE_BRANCH=master
DEVELOP_BRANCH=develop
FEATURE_BRANCH=feature/update-text-colors

for branch in $RELEASE_BRANCH $DEVELOP_BRANCH; do
    echo "Create $branch branch"
    git checkout $COURSE_BRANCH
    git checkout -b $branch

    echo "Push $branch branch"
    git push --set-upstream origin $branch
done

echo "Create feature branch"
git checkout $COURSE_BRANCH
git checkout -b $FEATURE_BRANCH

echo "Make changes to files"
cp .github/changes/engine.js engine.js
cp .github/changes/game-with-bug.js game.js

echo "Commit file changes"
git add engine.js game.js
git commit -m "chore: changed game text colors to green"

echo "Push feature branch $FEATURE_BRANCH"
git push --set-upstream origin $FEATURE_BRANCH

echo "Restore $COURSE_BRANCH"
git checkout $COURSE_BRANCH