[![CircleCI](https://circleci.com/gh/Automattic/Gridicons-iOS.svg?style=svg)](https://circleci.com/gh/Automattic/Gridicons-iOS)
[![Version](https://img.shields.io/cocoapods/v/Gridicons.svg?style=flat)](http://cocoadocs.org/docsets/Gridicons)
[![License](https://img.shields.io/cocoapods/l/Gridicons.svg?style=flat)](http://cocoadocs.org/docsets/Gridicons)
[![Platform](https://img.shields.io/cocoapods/p/Gridicons.svg?style=flat)](http://cocoadocs.org/docsets/Gridicons)

# Gridicons iOS

Gridicons-iOS is a small framework which produces images of the [Gridicons icon set](https://github.com/automattic/gridicons).

The framework can be installed either via CocoaPods:

`pod 'Gridicons', :podspec => 'https://raw.github.com/Automattic/Gridicons-iOS/develop/Gridicons.podspec'`

or Carthage:

`github 'Automattic/Gridicons-iOS'`

## Usage

First, import the framework:

`import Gridicons`

Getting a `UIImage` of a Gridicon is as simple as:

`let icon = UIImage.gridicon(.pages)`

With type inference, this can be shortened further:

`icon = .gridicon(.pages)`

You can optionally specify a size (default is 24 x 24):

`let icon = UIImage.gridicon(.pages, size: CGSize(width: 100, height: 100))`

The images that the framework produces use the `AlwaysTemplate` rendering mode, so you can tint them however you like.

## Adding new icons

To add new icons as they're added to the [Gridicons icon set](https://github.com/automattic/gridicons), complete the following steps:

* Add the icon from the `pdf` directory in the main Gridicons project to the `Gridicons.xcassets` catalog in this project
* Rename the icon so it no longer has the `gridicons-` prefix
* Select the icon in the asset catalog and change these settings:
   * Render As -> Template Image
   * Resizing -> Preserve Vector Data
   * Scales -> Single Scale
* If you haven't already, run `rake dependencies` to install SwiftGen
* Run `rake gen` to regenerate the `GridiconsGenerated.swift` file
* Commit your changes and release a new pod version.

## Updating existing icons

If you need to update a existing icon, update the PDF in the asset catalog with the new version and release a new pod version.

## License

Gridicons-iOS is licensed under [GNU General Public License v2 (or later)](./LICENSE.md).
