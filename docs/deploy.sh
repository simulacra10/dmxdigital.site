#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "=== Building site ==="
bash "$SCRIPT_DIR/minify-site.sh"

echo "=== Deploying to Cloudflare Pages ==="
wrangler pages deploy "$SCRIPT_DIR/docs" --project-name dmxdigital-site --branch main

echo "=== Done ==="
