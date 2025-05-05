#!/bin/bash
set -e  # Exit immediately if a command fails
echo "Setting git config..."
git config --global --add safe.directory '*'

echo "Downloading Flutter..."
curl -o flutter.tar.xz https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.19.3-stable.tar.xz

echo "Extracting Flutter..."
tar xf flutter.tar.xz

echo "Setting up Flutter environment..."
export PATH="$PATH:`pwd`/flutter/bin"

echo "Configuring Flutter..."
./flutter/bin/flutter --version
./flutter/bin/flutter config --enable-web

echo "Fixing pub dependencies..."
cd /vercel/path0
# Increase pub get timeout
export PUB_CACHE="`pwd`/.pub-cache"
./flutter/bin/flutter pub get --verbose

echo "Flutter setup complete!"