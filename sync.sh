#!/bin/bash

CONFIGS="$(find . -not -path '*/.*' -type f | grep -e "^\./config/")"

# Define ANSI escape code for red text
RED="\033[0;31m"
GREEN="\033[0;32m"
# Reset text color to default
RESET="\033[0m"

for dst_path in $CONFIGS; do
	src_path="$HOME""$(echo $dst_path | sed 's/^\.\/config\//\/\.config\//')"
	if [[ -f $src_path ]]; then
		echo -e "$GREEN""src_path: $src_path ""dst_path: $dst_path""$RESET"
		rsync -av --progress --checksum "$src_path" "$dst_path"
	else
		echo -e "$RED""ERROR: $src_path NOT present on current machine!$RESET"
	fi
done
