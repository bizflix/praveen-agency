#!/bin/bash

# Add tagline to logo across all HTML files

for file in *.html; do
  if [ -f "$file" ] && [ "$file" != "index.html" ]; then
    echo "Processing $file..."
    
    # Use perl for multi-line replacement
    perl -i -0pe 's/<a href="index\.html" class="flex items-center group">\s*<span class="text-2xl font-bold tracking-tight flex items-center">\s*<span class="text-\[#00ed64\] mr-0\.5">\/<\/span>\s*<span class="text-white">PRAVEEN<\/span>\s*<\/span>\s*<\/a>/<a href="index.html" class="flex items-center group">\n        <div class="flex flex-col">\n          <span class="text-2xl font-bold tracking-tight flex items-center">\n            <span class="text-[#00ed64] mr-0.5">\/<\/span>\n            <span class="text-white">PRAVEEN<\/span>\n          <\/span>\n          <span class="text-[10px] text-slate-400 tracking-widest uppercase ml-3">Engineering Excellence<\/span>\n        <\/div>\n      <\/a>/gs' "$file"
  fi
done

echo "Tagline added to all pages!"
