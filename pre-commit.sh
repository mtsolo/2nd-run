#!/bin/sh

NO_FORMAT="\033[0m"
F_BOLD="\033[1m"
C_GREEN="\033[38;5;2m"

echo -e "${F_BOLD}${C_GREEN}Running pre-commit hook...${NO_FORMAT}"
echo "Generating sheets index..."
ls sheets | grep 'abc$' > sheets/index.txt
echo "Staging file..."
git add sheets/index.txt
echo -e "${F_BOLD}${C_GREEN}Pre-commit hook done!${NO_FORMAT}"
