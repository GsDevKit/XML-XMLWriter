# XML-XMLWriter

[![Build Status](https://travis-ci.org/GsDevKit/XML-XMLWriter.svg?branch=master)](https://travis-ci.org/GsDevKit/XML-XMLWriter)

GemStone port of project.

This package provides a [Seaside](http://www.seaside.st)-like, block-based API for XML generation for [Pharo](http://www.pharo.org)

## Installation

### Metacello
```smalltalk
Metacello new
	baseline: 'XMLWriter';
	repository: 'github://pharo-contributions/XML-XMLWriter/src';
	load.
```
### tODE command line
```
project install --url=http://gsdevkit.github.io/GsDevKit_home/XMLWriter.ston
project load XMLWriter
```

## Usage

A simple example on how to use the XML writer

```Smalltalk
|writer|
writer := XMLWriter new.
writer 
	enablePrettyPrinting;
	comment: 'A simple XML structure';
	tag: 'hello'
	with: [ writer tag: 'world' ].
writer asString
```

results in the following XML output
```XML
<!--A simple XML structure-->
<hello>
    <world/>
</hello>
```

Check the class **XMLWriterTest** for many other examples.

## LICENSE
[MIT License](LICENSE)

## History
This project was migrated from [http://smalltalkhub.com/#!/~PharoExtras/XMLWriter](http://smalltalkhub.com/#!/~PharoExtras/XMLWriter)
