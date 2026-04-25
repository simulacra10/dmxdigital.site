#!/usr/bin/env bash
set -euo pipefail

CSS_IN="assets/css/site.css"
CSS_OUT="assets/css/site.min.css"
HTML_IN="index.html"

command -v cleancss >/dev/null || {
  echo "Missing cleancss. Install with: npm install -g clean-css-cli"
  exit 1
}

command -v html-minifier-terser >/dev/null || {
  echo "Missing html-minifier-terser. Install with: npm install -g html-minifier-terser"
  exit 1
}

cp "$HTML_IN" "${HTML_IN}.bak"

cleancss -o "$CSS_OUT" "$CSS_IN"

html-minifier-terser "$HTML_IN"   --collapse-whitespace   --remove-comments   --minify-css true   --minify-js true   -o "$HTML_IN"

sed -i 's|assets/css/site.css|assets/css/site.min.css|g' "$HTML_IN"

echo "Done."
echo "Created: $CSS_OUT"
echo "Backup: ${HTML_IN}.bak"
