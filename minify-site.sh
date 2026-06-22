#!/usr/bin/env bash
set -euo pipefail

# DMX Digital static-site publisher
#
# Builds a minified copy of the site into ./public.
# The source directory remains untouched, similar to a Hugo-style workflow.

SRC_DIR="."
PUBLIC_DIR="docs"

CSS_IN="assets/css/site.css"
CSS_MIN="assets/css/site.min.css"

command -v cleancss >/dev/null || {
  echo "Missing cleancss. Install with: npm install -g clean-css-cli"
  exit 1
}

command -v html-minifier-terser >/dev/null || {
  echo "Missing html-minifier-terser. Install with: npm install -g html-minifier-terser"
  exit 1
}

command -v rsync >/dev/null || {
  echo "Missing rsync. Install it with your system package manager."
  exit 1
}

echo "Cleaning ${PUBLIC_DIR}/ ..."
rm -rf "$PUBLIC_DIR"
mkdir -p "$PUBLIC_DIR"

echo "Copying site files into ${PUBLIC_DIR}/ ..."

# Copy everything except build/output/dev/VCS files.
# This keeps the source tree untouched and produces a deployable public folder.
rsync -a \
  --exclude "$PUBLIC_DIR/" \
  --exclude ".git/" \
  --exclude ".github/" \
  --exclude ".gitignore" \
  --exclude "*.bak" \
  --exclude "*.patch" \
  --exclude "*.zip" \
  --exclude ".DS_Store" \
  --exclude "node_modules/" \
  "$SRC_DIR"/ "$PUBLIC_DIR"/

echo "Minifying CSS ..."
if [[ -f "$PUBLIC_DIR/$CSS_IN" ]]; then
  cleancss -o "$PUBLIC_DIR/$CSS_MIN" "$PUBLIC_DIR/$CSS_IN"
else
  echo "Warning: CSS source not found: $PUBLIC_DIR/$CSS_IN"
fi

echo "Minifying HTML files ..."
while IFS= read -r -d '' html_file; do
  html-minifier-terser "$html_file" \
    --collapse-whitespace \
    --remove-comments \
    --remove-redundant-attributes \
    --remove-script-type-attributes \
    --remove-style-link-type-attributes \
    --minify-css true \
    --minify-js true \
    -o "$html_file"

  # Make published HTML use the minified stylesheet.
  sed -i 's|assets/css/site.css|assets/css/site.min.css|g' "$html_file"
  sed -i 's|/assets/css/site.css|/assets/css/site.min.css|g' "$html_file"
done < <(find "$PUBLIC_DIR" -type f -name "*.html" -print0)

echo "Removing unminified CSS from public output ..."
if [[ -f "$PUBLIC_DIR/$CSS_MIN" && -f "$PUBLIC_DIR/$CSS_IN" ]]; then
  rm "$PUBLIC_DIR/$CSS_IN"
fi

echo "Syncing minified CSS back to source tree ..."
cp "$PUBLIC_DIR/$CSS_MIN" "$CSS_MIN"

echo "Done."
echo "Published minified site to: $PUBLIC_DIR/"
echo
echo "Preview locally with:"
echo "  python3 -m http.server 8000 -d public"
