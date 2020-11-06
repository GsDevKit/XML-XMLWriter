tests
testSimpleExample

	| writer  |
	writer := XMLWriter new.
	writer tag
			name: 'emptyTag';
			attributeAt: 'a' put: 'one';
			write.
			
	self assert: writer contents equals: '<emptyTag a="one"/>'