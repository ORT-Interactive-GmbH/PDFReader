
var win = Titanium.UI.createWindow();

var pdfReader = require("de.ortinteractive.pdfreader" );
var reader = pdfReader.createReader({
	top: 0,
	left: 0,
	width: Ti.UI.FILL,
	height: Ti.UI.FILL,
	pdf: Ti.Filesystem.getFile( Ti.Filesystem.resourcesDirectory , "sample.pdf" ).resolve(),
	password: ""
});
win.add( reader );
win.open();