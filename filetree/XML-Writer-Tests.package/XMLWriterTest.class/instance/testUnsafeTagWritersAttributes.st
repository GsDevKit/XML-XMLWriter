tests
testUnsafeTagWritersAttributes
	| writer tag |

	writer := XMLWriter new.
	tag := writer  startTag: 'outer' attributes: (Array with: 'first' -> 'one').
	self
		assert: tag hasAttributes;
		assert: (tag attributeAt: 'first') equals: 'one';
		assert: (tag attributeAt: 'second' put: 'two') equals: 'two';
		assert: (tag attributeAt: 'third' ifAbsentPut: ['three']) equals: 'three';
		assert: (tag attributeAt: 'fourth' ifAbsent: [nil]) isNil;
		assert: (tag attributeAt: 'fourth') isEmpty;
		assert: (tag attributes at: 'fourth') isEmpty;
		deny: (tag includesAttribute: 'fourth').

	writer
		startTag: 'inner'
		attributes: (Dictionary with: 'fourth' -> 'four').
	self assert:
		writer contents equals:
			'<outer first="one" second="two" third="three"><inner fourth="four">'