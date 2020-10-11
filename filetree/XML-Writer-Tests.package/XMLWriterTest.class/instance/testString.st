tests
testString
	self assert:
		(XMLWriter writeWith: [:writer |
			writer
				tag: 'test'
				with: [writer string: '<escaped name="&value;"/>']]) equals:
					'<test>&lt;escaped name="&amp;value;"/&gt;</test>'.
	self assert:
		(XMLWriter writeWith: [:writer |
			writer
				tag: 'test'
				with: [writer string: '']]) equals: '<test/>'