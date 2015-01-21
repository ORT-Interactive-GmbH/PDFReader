# PDFReader

[![gittio](http://img.shields.io/badge/gittio-0.7.0-00B4CC.svg)](http://gitt.io/component/de.ortinteractive.navwindow)
<img src="https://img.shields.io/badge/64bit-support-green.svg">
[![License](http://img.shields.io/badge/license-MIT-orange.svg)](http://mit-license.org)


## Overview

This module is a more advanced PDF Reader than the standard Quicklook PDF reader that comes with Titanium / iOS.

### Features
* Page Thumbnails
* High performance
* Horizontal scrolling
* Multiple orientations
* Open password protected PDFs

### Upcoming features
* Configurable thumbnail size
* Bookmark pages
* Event listeners


## Installation
### Get it [![gitTio](http://gitt.io/badge.png)](http://gitt.io/component/de.ortinteractive.pdfreader)
Download the latest distribution ZIP-file and consult the [Titanium Documentation](http://docs.appcelerator.com/titanium/latest/#!/guide/Using_a_Module) on how install it, or simply use the [gitTio CLI](http://gitt.io/cli):

`$ gittio install de.ortinteractive.pdfreader`

## Demo
<img src="documentation/demo.gif" />


## Methods

* `createReader( args )` - Remove all existing windows on the stack and return to the root.
	* args _(Object)_:
   		* `pdf` _(String)_ - The PDF file to open
   		* `password` _(String)_ - The password to use for the PDF file (optional)
   		
## Example
```javascript
var pdfReader = require("de.ortinteractive.pdfreader" );
var reader = pdfReader.createReader({
	top: 0,
	left: 0,
	width: Ti.UI.FILL,
	height: Ti.UI.FILL,
	pdf: Ti.Filesystem.getFile( Ti.Filesystem.resourcesDirectory , "sample.pdf" ).resolve(),
	password: ""
});
```

## License

The MIT License (MIT)

Copyright (c) 2015 ORT interactive GmbH


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