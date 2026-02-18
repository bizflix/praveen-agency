#!/bin/bash

# Update navbar logo: green slash, adaptive PRAVEEN text (black/white per system theme)
# Adds a <style> block for .logo-text class and updates the logo HTML

for file in *.html; do
  if [ -f "$file" ]; then
    echo "Processing $file..."

    # 1. Inject logo CSS into <head> if not already present
    if ! grep -q 'logo-text' "$file"; then
      perl -i -0pe 's|(<head[^>]*>)|$1\n    <style>\n      .logo-text { color: #000000; }\n      .logo-tagline { color: #555555; }\n      \@media (prefers-color-scheme: dark) {\n        .logo-text { color: #ffffff; }\n        .logo-tagline { color: #aaaaaa; }\n      }\n    <\/style>|' "$file"
    fi

    # 2. Replace logo span with adaptive classes
    perl -i -0pe 's|<span class="text-white">PRAVEEN</span>|<span class="logo-text">PRAVEEN</span>|g' "$file"
    perl -i -0pe 's|<span class="text-\[10px\] text-slate-400 tracking-widest uppercase ml-3">Engineering Excellence</span>|<span class="logo-tagline" style="font-size:10px; letter-spacing:0.15em; text-transform:uppercase; margin-left:0.75rem;">Engineering Excellence</span>|g' "$file"
  fi
done

echo "Done! Logo colors updated across all pages."
