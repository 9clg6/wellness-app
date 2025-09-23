#!/bin/bash

# Helper script to run fastlane with the correct Ruby environment
# Usage: ./run_fastlane.sh ios beta
#        ./run_fastlane.sh ios release
#        ./run_fastlane.sh android beta
#        ./run_fastlane.sh android release

set -e

# Check if platform is provided
if [ $# -lt 1 ]; then
    echo "Usage: $0 <platform> <lane>"
    echo "Platforms: ios, android"
    echo "Lanes: beta, release, build (android only)"
    echo ""
    echo "Examples:"
    echo "  $0 ios beta"
    echo "  $0 android beta"
    echo "  $0 android release"
    exit 1
fi

PLATFORM=$1


shift

# Validate platform
if [ "$PLATFORM" != "ios" ] && [ "$PLATFORM" != "android" ]; then
    echo "Error: Platform must be 'ios' or 'android'"
    exit 1
fi

# Set up Ruby environment - use system Ruby for CocoaPods compatibility
export PATH="/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/bin:$PATH"

# Navigate to the correct platform directory
PLATFORM_DIR="$(dirname "$0")/$PLATFORM"
if [ ! -d "$PLATFORM_DIR" ]; then
    echo "Error: Platform directory '$PLATFORM_DIR' not found"
    exit 1
fi

cd "$PLATFORM_DIR"

# Check if Gemfile exists
if [ ! -f "Gemfile" ]; then
    echo "Error: Gemfile not found in $PLATFORM_DIR"
    exit 1
fi

# Run fastlane or build commands with the provided arguments
echo "Running fastlane for $PLATFORM with args: $@"

# For iOS builds, use system Ruby compatible with CocoaPods
if [ "$PLATFORM" = "ios" ] && ([ "$1" = "build" ] || [ "$1" = "beta" ]); then
    echo "Using direct Flutter build with CocoaPods-compatible Ruby"
    export PATH="/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/bin:$PATH"
    # Navigate to project root for Flutter build (go back from ios/ to project root)
    cd "$(dirname "$0")/.."
    PROJECT_ROOT="$(pwd)"
    if [ "$PLATFORM" = "ios" ]; then
        if [ -f "ios/fastlane/.env" ]; then
            echo "Loading environment variables from .env file for iOS..."
            export $(cat ios/fastlane/.env | grep -v '^#' | xargs)
        else
            echo "Warning: .env file not found in ios/fastlane/. Make sure to set iOS environment variables manually."
        fi
    fi
    fvm flutter clean
    fvm flutter pub get
    fvm flutter build ios --release --flavor prod --no-codesign
    
    # If this is a beta build, continue with the fastlane beta process after build
    if [ "$1" = "beta" ]; then
        echo "Proceeding with TestFlight upload via fastlane..."
        # Navigate to iOS fastlane directory and load env vars again
        cd "$PROJECT_ROOT/ios/fastlane"
        if [ -f ".env" ]; then
            echo "Loading environment variables for fastlane..."
            export $(cat .env | grep -v '^#' | xargs)
        fi
        fastlane beta_upload
    fi
else
    # Use standard fastlane for other cases
    fastlane "$@"
fi
