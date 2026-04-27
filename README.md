# Gridicons iOS

Gridicons-iOS is a small framework which produces images of the [Gridicons icon set](https://github.com/automattic/gridicons).

## Installation

The framework is distributed via [Swift Package Manager](https://www.swift.org/package-manager/).
Add it as a dependency in your `Package.swift`:

```swift
.package(url: "https://github.com/Automattic/Gridicons-iOS.git", from: "1.3.0")
```

Or, in Xcode, choose **File → Add Package Dependencies…** and enter `https://github.com/Automattic/Gridicons-iOS.git`.

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

## SwiftUI Usage

For SwiftUI projects (iOS 13.0+), you can use the `Image` type directly:

```swift
import SwiftUI
import Gridicons

struct ContentView: View {
    var body: some View {
        Image.gridicon(.pages)
            .foregroundStyle(.orange) // Tints the icon
    }
}
```

The SwiftUI `Image` type also supports the template rendering mode, so you can tint it using the `foregroundStyle` modifier.

## Development

For code changes in `GridiconsGenerated.swift`:

* Edit the `Gridicons.stencil` file to modify the template
* If you haven't already, run `rake dependencies` to install SwiftGen
* Run `rake gen` to regenerate the `GridiconsGenerated.swift` file

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
* Commit your changes and release a new version.

## Updating existing icons

If you need to update a existing icon, update the PDF in the asset catalog with the new version and release a new version.

## License

Gridicons-iOS is licensed under [GNU General Public License v2 (or later)](./LICENSE.md).
