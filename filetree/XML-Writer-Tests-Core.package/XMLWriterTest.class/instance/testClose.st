tests
testClose
	self assert:
		(String streamContents: [:stream |
			(XMLWriter on: stream)
				tag: 'one';
				tag: 'two';
				close]) equals: '<one/><two/>'.
	self assert:
		(String streamContents: [:stream |
			((XMLWriter on: stream)
				tag: 'one';
				tag: 'two') close]) equals: '<one/><two/>'