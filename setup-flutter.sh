#!/bin/bash

# Download Flutter SDK
FLUTTER_URL="https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_3.10.6-stable.tar.xz"
wget -q -O flutter.tar.xz $FLUTTER_URL
tar xf flutter.tar.xz
export PATH="$PATH:$(pwd)/flutter/bin"

# Optionally, you might want to run `flutter doctor` to verify setup, but it's not necessary for CI