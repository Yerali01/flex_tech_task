#!/bin/bash
git config --global --add safe.directory '*'
curl -o flutter.tar.xz https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.19.3-stable.tar.xz
tar xf flutter.tar.xz
export PATH="$PATH:`pwd`/flutter/bin"
flutter config --enable-web