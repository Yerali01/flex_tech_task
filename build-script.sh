#!/bin/bash
set -x  # Print each command before executing (for debugging)

# Ensure environment is set up correctly
export PATH="$PATH:`pwd`/flutter/bin"
export PUB_CACHE="/tmp/.pub-cache"

echo "Current directory: $(pwd)"
echo "PATH: $PATH"
echo "PUB_CACHE: $PUB_CACHE"

# Try different build options until one works
echo "Attempting build with base options..."
./flutter/bin/flutter build web --release || true

echo "Attempting build with no tree shake icons..."
./flutter/bin/flutter build web --release --no-tree-shake-icons || true

echo "Attempting build with web-renderer html..."
./flutter/bin/flutter build web --release --web-renderer html || true

echo "Attempting build with minimal options..."
./flutter/bin/flutter build web --release --no-tree-shake-icons --web-renderer html --dart-define=Dart2jsOptimization=O1 || true

# Check if build/web exists
if [ -d "build/web" ]; then
  echo "Build succeeded! Output directory exists."
  ls -la build/web
  exit 0
else
  echo "Build failed. No output directory found."
  exit 1
fi