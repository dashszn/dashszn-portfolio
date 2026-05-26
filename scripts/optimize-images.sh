#!/usr/bin/env bash
set -euo pipefail

# Dashszn.dev image optimization helper
#
# This script is a template for converting selected raw images into optimized WebP files.
# It assumes the `webp` package is installed.
#
# Install WebP tools on Ubuntu/WSL:
#
#   sudo apt update
#   sudo apt install webp
#
# Usage:
#
#   chmod +x scripts/optimize-images.sh
#   ./scripts/optimize-images.sh
#
# Important:
# - Put original images inside assets-raw/
# - Only optimized final WebP images should go inside public/assets/images/
# - Uncomment only the conversions for images that exist.

mkdir -p public/assets/images/profile
mkdir -p public/assets/images/education
mkdir -p public/assets/images/experience
mkdir -p public/assets/images/projects
mkdir -p public/assets/images/illustrations
mkdir -p public/assets/images/backgrounds

echo "Dashszn.dev image optimization template"
echo "Uncomment conversion commands after placing raw images in assets-raw/"

# Hero portrait: 4:5 ratio
# cwebp assets-raw/profile/danish-portrait-original.jpg \
#   -q 84 \
#   -resize 1000 1250 \
#   -o public/assets/images/profile/danish-portrait.webp

# Optional casual/about image
# cwebp assets-raw/profile/danish-casual-original.jpg \
#   -q 82 \
#   -resize 1000 1250 \
#   -o public/assets/images/profile/danish-casual.webp

# Optional workspace image
# cwebp assets-raw/profile/danish-workspace-original.jpg \
#   -q 80 \
#   -resize 1200 800 \
#   -o public/assets/images/profile/danish-workspace.webp

# UTM graduation/education image
# cwebp assets-raw/education/danish-utm-graduation-original.jpg \
#   -q 80 \
#   -resize 1200 800 \
#   -o public/assets/images/education/danish-utm-graduation.webp

# MSU graduation/education image
# cwebp assets-raw/education/danish-msu-graduation-original.jpg \
#   -q 80 \
#   -resize 1200 800 \
#   -o public/assets/images/education/danish-msu-graduation.webp

# Elmina Tech work experience image
# cwebp assets-raw/experience/elmina-tech-workplace-original.png \
#   -q 80 \
#   -resize 1200 800 \
#   -o public/assets/images/experience/elmina-tech-workplace.webp

# Future project thumbnail example
# cwebp assets-raw/projects/project-original.png \
#   -q 82 \
#   -resize 1280 720 \
#   -o public/assets/images/projects/project-thumbnail.webp

echo "Done. No conversions were run unless commands were uncommented."
