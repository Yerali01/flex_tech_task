#!/bin/bash
set -x  # Print each command before executing (for debugging)
echo "Current directory: $(pwd)"
echo "Directory contents: $(ls -la)"

echo "Setting git config..."
git config --global --add safe.directory '*'

echo "Downloading Flutter..."
curl -o flutter.tar.xz https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.19.3-stable.tar.xz

echo "Extracting Flutter..."
tar xf flutter.tar.xz

echo "Setting up Flutter environment..."
export PATH="$PATH:`pwd`/flutter/bin"

echo "Flutter version:"
./flutter/bin/flutter --version

echo "Configuring Flutter..."
./flutter/bin/flutter config --enable-web

# Show pubspec.yaml content
echo "Pubspec.yaml content:"
cat pubspec.yaml

# Clean and get dependencies
echo "Running flutter clean..."
./flutter/bin/flutter clean

echo "Setting custom PUB_CACHE..."
export PUB_CACHE="/tmp/.pub-cache"
mkdir -p $PUB_CACHE

echo "Running flutter pub get with verbose output..."
./flutter/bin/flutter pub get --verbose

# Try to fix common dependency issues
echo "Running flutter pub upgrade..."
./flutter/bin/flutter pub upgrade --major-versions

echo "Checking for Flutter Doctor issues..."
./flutter/bin/flutter doctor -v

echo "Setup complete!"