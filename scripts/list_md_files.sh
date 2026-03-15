#!/bin/bash

# Find all .md and .mdx files
# Exclude PROGRESS.md, files ending with _zh_TW.md or _zh_TW.mdx, and node_modules
find . -type f \( -name "*.md" -o -name "*.mdx" \) \
  ! -name "PROGRESS.md" \
  ! -name "*_zh_TW.md" \
  ! -name "*_zh_TW.mdx" \
  ! -path "*/node_modules/*" \
  ! -path "*/.git/*"
