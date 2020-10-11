tests
testEntityReference
	| writer |

	(writer := XMLWriter new)
		tag: 'entities'
		with: [
			writer & 'one'.
			writer string: 'two'.
			writer & 'three'].

	self assert: writer contents equals: '<entities>&one;two&three;</entities>' 