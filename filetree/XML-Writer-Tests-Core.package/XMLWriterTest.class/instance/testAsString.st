tests
testAsString
	self assert:
		(XMLWriter new
			tag: 'one';
			tag: 'two';
			asString) equals: '<one/><two/>'.
	self assert:
		(XMLWriter new
			tag: 'one';
			tag: 'two') asString equals: '<one/><two/>'