#!/bin/bash
set -e

# Kill background processes on exit
trap 'kill 0' EXIT

# Install Tailwind locally if not present
if [ ! -f node_modules/.bin/tailwindcss ]; then
  echo "Installing Tailwind CSS..."
  npm install --save-dev tailwindcss@3 @tailwindcss/typography 2>&1 | tail -1
fi

echo "Building Tailwind CSS..."
npx tailwindcss -i ./css/style.css -o ./css/tailwind.min.css --minify

echo ""
echo "Starting Tailwind watch + Jekyll serve..."
echo "  Jekyll:   http://localhost:4000"
echo "  LiveReload: http://localhost:4000 (auto-refresh on changes)"
echo ""
echo "Press Ctrl+C to stop."
echo ""

# Tailwind watch in background
npx tailwindcss -i ./css/style.css -o ./css/tailwind.min.css --watch &

# Jekyll serve in foreground
bundle exec jekyll serve --livereload &

wait
