#!/bin/bash

# Add mobile menu button ID and menu panel to all HTML files

for file in insights.html services.html about.html careers.html contact.html article-*.html playgrounds.html opensource.html guides.html privacy.html terms.html; do
  if [ -f "$file" ]; then
    echo "Processing $file..."
    
    # Add ID to mobile menu button
    sed -i '' 's/<button class="md:hidden text-white">/<button id="mobile-menu-button" class="md:hidden text-white">/g' "$file"
    
    # Add mobile menu panel after </nav> closing tag
    sed -i '' '/<\/nav>/a\
\
    <!-- Mobile Menu -->\
    <div id="mobile-menu" class="hidden md:hidden bg-[#000d14] border-t border-[#00ed64]/10">\
      <div class="max-w-7xl mx-auto px-6 py-4 flex flex-col gap-4">\
        <a href="services.html" class="text-slate-400 hover:text-[#00ed64] transition-colors py-2">Services</a>\
        <a href="insights.html" class="text-slate-400 hover:text-[#00ed64] transition-colors py-2">Insights</a>\
        <a href="about.html" class="text-slate-400 hover:text-[#00ed64] transition-colors py-2">About</a>\
        <a href="contact.html" class="bg-[#00ed64] text-[#000d14] px-6 py-3 rounded-md hover:bg-[#00ed64]/90 transition-colors text-center font-medium">Start Project</a>\
      </div>\
    </div>
' "$file"
    
    # Add mobile menu toggle JavaScript before </body>
    sed -i '' '/<\/body>/i\
\
<script>\
  // Mobile menu toggle\
  const mobileMenuButton = document.getElementById('"'"'mobile-menu-button'"'"');\
  const mobileMenu = document.getElementById('"'"'mobile-menu'"'"');\
  \
  if (mobileMenuButton && mobileMenu) {\
    mobileMenuButton.addEventListener('"'"'click'"'"', () => {\
      mobileMenu.classList.toggle('"'"'hidden'"'"');\
    });\
  }\
</script>
' "$file"
  fi
done

echo "Mobile menu added to all pages!"
