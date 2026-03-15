#!/bin/bash

# Get list of original md/mdx files
# Reuse list_md_files.sh if it works, otherwise rewrite
FILES=$(./scripts/list_md_files.sh)
ALL_DONE=true

echo "Checking translation status..."
echo "------------------------------"

for FILE in $FILES; do
  EXT="${FILE##*.}"
  BASE="${FILE%.*}"
  ZH_FILE="${BASE}_zh_TW.${EXT}"
  
  if [ -f "$ZH_FILE" ]; then
    echo "[OK] $FILE -> $ZH_FILE"
  else
    echo "[MISSING] $FILE"
    ALL_DONE=false
  fi
done

echo "------------------------------"
if [ "$ALL_DONE" = true ]; then
  echo "All files translated!"
  exit 0
else
  echo "Some files are missing translations."
  exit 1
fi
