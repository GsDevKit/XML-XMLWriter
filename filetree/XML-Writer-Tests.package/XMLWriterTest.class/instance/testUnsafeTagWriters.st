tests
testUnsafeTagWriters
	self assert:
		(XMLWriter writeWith: [:writer |
			writer startTag name: 'one'.
			writer
				startTag: 'two'
				attributes: (Array with: 'name' -> 'value');
				startTag: 'three']) equals: '<one><two name="value"><three>'.

	self assert:
		(XMLWriter writeWith: [:writer |
			writer endTag name: 'three'.
			writer
				endTag: 'two';
				endTag: 'one']) equals: '</three></two></one>'