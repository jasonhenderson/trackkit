# TrackKit

## 2.3.0

- Added `NMEA` file support. _Currently supported identifiers are GPGGA, GPGLL, GPRMC & GPWPL._

## 2.2.0

- Added full support for `GPX`'s `TrackPointExtensions`.

## 2.1.0

- Added `LOG` file support.
- Added `GPX` file version v1.0 support.
- Extended the documentation.

## Version 2.0.1

- Fix the `Trackpoint` parsing.
- Add the `TrackType` property to the `File`.

## Version 2.0.0

- Cleanup the code.
- Added `TCX` file support.
- Extended the documentation.

## Version 1.2.0

- Rename `GPXKit` to `TrackKit` because we want to be able to support multiple formats.
- Update the code to be Swift 3.0 compatible.

## Version 1.1.0

- Remove the empty parse error notice.
- Remove the `GK` prefix for all the classes.
- The license property in the copyright notice is now in the correct `NSURL` format.
- Add the magnetic variant property to a point.
- Add the fix property to a point.
- Add the dgps station type to point.
- Throw an error when an incorrect GPX version is loaded. Only version **1.1** is supported by `GPXKit`.
- Update AEXML to version **3.0**.

## Version 1.0.2

* Cleanup the code.
* Removed the `AFDateHelper` dependency.
* Became a Swift package. _PR request sent in order to add AEXML as a package._
* Add support for OS X, Apple Tv and WatchOS 2.0.
* Fully test the application.

## Version 1.0.1

* Cleanup the README.
* Add inline documentation.

## Version 1.0.0

* Parses a GPX file into a readable format with Swift.
* An example project with spec that cover 100% of the framework.
