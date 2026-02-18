#!/bin/bash

# Replace image logo with text logo across all HTML files

for file in *.html; do
  if [ -f "$file" ] && [ "$file" != "index.html" ]; then
    echo "Processing $file..."
    
    # Use perl for multi-line replacement
    perl -i -0pe 's/<a href="index\.html" class="flex items-center group">\s*<img src="\.\/logo\.png" alt="Praveen & Partners" class="h-12 w-auto">\s*<\/a>/<a href="index.html" class="flex items-center group">\n        <span class="text-2xl font-bold tracking-tight flex items-center">\n          <span class="text-[#00ed64] mr-0.5">\/<\/span>\n          <span class="text-white">PRAVEEN<\/span>\n        <\/span>\n      <\/a>/gs' "$file"
  fi
done

echo "Text logo applied to all pages!"
