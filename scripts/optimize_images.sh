#!/usr/bin/env bash
# Usage: ./scripts/optimize_images.sh input_dir site/static/assets
set -euo pipefail
in="${1:-assets/originals}"
out="${2:-site/static/assets}"
mkdir -p "$out"
find "$in" -type f \( -iname '*.png' -o -iname '*.jpg' -o -iname '*.jpeg' \) | while read -r img; do
  base="$(basename "$img")"
  cwebp -q 80 "$img" -o "$out/${base%.*}.webp"
done
echo "Optimized images written to $out"
