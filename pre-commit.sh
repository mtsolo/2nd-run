#!/bin/sh

echo "Generating indexes..."
ls appunti | grep 'md$' > appunti/index.txt
ls spartiti | grep 'abc$' > spartiti/index.txt
echo "Staging index files..."
git add appunti/index.txt spartiti/index.txt
