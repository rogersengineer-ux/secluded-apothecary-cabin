#!/bin/bash
# deploy.sh — Secluded Apothecary Cabin
# Validates repo structure and pushes to main for GitHub Pages deployment.

set -e

# ── Colors ──────────────────────────────────────────────────
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

echo ""
echo "🌲 Secluded Apothecary Cabin — Deploy"
echo "────────────────────────────────────────"

# ── 1. Structure checks ──────────────────────────────────────
ERRORS=0

if [ ! -f "index.html" ]; then
  echo -e "${RED}✗ index.html not found in repo root${NC}"
  ERRORS=$((ERRORS+1))
else
  echo -e "${GREEN}✓ index.html found${NC}"
fi

if [ ! -d "images" ]; then
  echo -e "${RED}✗ /images folder not found${NC}"
  ERRORS=$((ERRORS+1))
else
  IMG_COUNT=$(find images -type f \( -name "*.webp" -o -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" \) | wc -l | tr -d ' ')
  echo -e "${GREEN}✓ /images folder found — ${IMG_COUNT} image(s)${NC}"
fi

if [ $ERRORS -gt 0 ]; then
  echo ""
  echo -e "${RED}Deploy aborted — fix the above before pushing.${NC}"
  exit 1
fi

# ── 2. Commit message ────────────────────────────────────────
echo ""
echo -e "${YELLOW}Commit message (leave blank to abort):${NC}"
read -r MSG

if [ -z "$MSG" ]; then
  echo "No message entered — deploy aborted."
  exit 0
fi

# ── 3. Push to main ─────────────────────────────────────────
git add -A
git commit -m "$MSG"
git push origin main

echo ""
echo -e "${GREEN}✓ Pushed to main. GitHub Pages will update in ~60 seconds.${NC}"
echo ""
