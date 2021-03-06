# Stone Age for iOS

*Develop iOS apps caveman style*

**TODO**: document.

## Getting Started

You'll need Mountain Lion 10.10 or a later version.

* Install [Xcode](https://developer.apple.com/technologies/tools/)
* Install [ios-sim](https://www.npmjs.org/package/ios-sim)
* Install [ios-deploy](https://www.npmjs.org/package/ios-deploy) (*optional*)
* Install [kramdown](http://kramdown.gettalong.org) (*optional*)
* Clone repo
* Build & run (on simulator): `rake play`

In order to run on an actual iOS device:

* Replace `Assets/Development.mobileprovision` with your provisioning profile
* Attach your device
* Check if your device is recognized: `rake help`
* Build & run (on device): `rake run`

## License

Released under the MIT license.

Copyright (c) 2014 Konstantin Bender.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
