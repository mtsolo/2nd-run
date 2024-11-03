#!/bin/sh

echo "Installing pre-commit hook..."
cd .git/hooks
ln -s -f ../../pre-commit.sh pre-commit
echo "Pre-commit hook installed!"
