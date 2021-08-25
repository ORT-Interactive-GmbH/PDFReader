import PDFReader from 'de.ortinteractive.pdfreader';

const window = Ti.UI.createWindow();

const reader = PDFReader.createReader({
	pdf: Ti.Filesystem.getFile(Ti.Filesystem.resourcesDirectory , 'sample.pdf'),
	password: ''
});

window.add(reader);
window.open();