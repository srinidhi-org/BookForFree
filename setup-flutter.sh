#!/bin/bash

# Download Flutter SDK
FLUTTER_URL="https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_3.10.6-stable.tar.xz"
wget -q -O flutter_sdk.tar.xz $FLUTTER_URL

# Extract Flutter SDK
tar xf flutter_sdk.tar.xz

# Add Flutter to PATH
export PATH="$PATH:$(pwd)/flutter/bin"

# Verify Flutter installation
flutter --version

# Clean up the downloaded archive
rm flutter_sdk.tar.xz

# Build the Flutter web app
flutter build web --release