fastlane documentation
----

# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```sh
xcode-select --install
```

For _fastlane_ installation instructions, see [Installing _fastlane_](https://docs.fastlane.tools/#installing-fastlane)

# Available Actions

## iOS

### ios check_signing

```sh
[bundle exec] fastlane ios check_signing
```

Check signing configuration

### ios setup_signing

```sh
[bundle exec] fastlane ios setup_signing
```

Setup certificates and provisioning profiles

### ios build

```sh
[bundle exec] fastlane ios build
```

Build Flutter iOS App

### ios beta

```sh
[bundle exec] fastlane ios beta
```

Upload to TestFlight

### ios beta_upload

```sh
[bundle exec] fastlane ios beta_upload
```

Upload to TestFlight (build already done)

### ios release

```sh
[bundle exec] fastlane ios release
```

Deploy to App Store

----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.

More information about _fastlane_ can be found on [fastlane.tools](https://fastlane.tools).

The documentation of _fastlane_ can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
