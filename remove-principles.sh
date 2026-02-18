#!/bin/bash

# Remove Principles link from footer in all HTML files

for file in *.html; do
  if [ -f "$file" ] && [ "$file" != "index.html" ]; then
    echo "Processing $file..."
    
    # Use perl for multi-line replacement
    perl -i -0pe 's/<li>\s*<a href="about\.html" class="text-slate-400 hover:text-\[#00ed64\] transition">\s*Principles\s*<\/a>\s*<\/li>\s*//gs' "$file"
  fi
done

echo "Principles link removed from all pages!"
