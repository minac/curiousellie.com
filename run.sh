#!/bin/bash
set -e

cd "$(dirname "$0")"

# Check for bundle
if ! command -v bundle &> /dev/null; then
    echo "Error: bundler not installed. Run: gem install bundler"
    exit 1
fi

# Install gems if needed
if [ ! -d "vendor/bundle" ]; then
    echo "Installing dependencies..."
    bundle install --path vendor/bundle
fi

echo "Starting Jekyll at http://localhost:4000"
bundle exec jekyll serve --livereload
