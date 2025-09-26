#!/bin/bash

set -euo pipefail

PLATFORM="$1"; shift || true
LANE_NAME="$1"; shift || true

if [ "${PLATFORM}" = "ios" ]; then
  cd ios
  bundle exec fastlane "${LANE_NAME}"
  exit 0
fi

if [ "${PLATFORM}" = "android" ]; then
  cd android
  bundle exec fastlane "${LANE_NAME}"
  exit 0
fi

echo "Usage: $0 <ios|android> <lane_name>"
exit 1