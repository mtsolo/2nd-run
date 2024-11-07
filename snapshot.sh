#!/bin/sh

git add . && git commit --message $(date --iso-8601=minutes) && git push
