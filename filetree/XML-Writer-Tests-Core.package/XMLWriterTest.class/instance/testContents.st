tests
testContents
	self assert:
		(XMLWriter new
			tag: 'one';
			tag: 'two';
			contents) equals: '<one/><two/>'.
	self assert:
		(XMLWriter new
			tag: 'one';
			tag: 'two') contents equals: '<one/><two/>'