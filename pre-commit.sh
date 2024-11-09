#!/bin/sh

echo "Generating sheets index..."
ls sheets | grep 'abc$' > sheets/index.txt
echo "Staging index file..."
git add sheets/index.txt
