#!/bin/sh

echo "Generating indexes..."
ls sheets | grep 'abc$' > sheets/index.txt
ls appunti | grep 'md$' > appunti/index.txt
echo "Staging index files..."
git add sheets/index.txt
