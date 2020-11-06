tests
testEscapesContentEntityReferences
	| writer |

	writer := XMLWriter new.
	self
		assert: (writer escapesContentEntityReferences: true) == writer;
		assert: writer escapesContentEntityReferences;
		assert: writer isEscaping;
		assert: writer contentEscapes equals: writer contentDefaultEscapes;
		assert: writer contentStringEscapes equals: writer contentStringDefaultEscapes.

	self
		assert: (writer escapesContentEntityReferences: false) == writer;
		deny: writer escapesContentEntityReferences;
		assert: writer isEscaping;
		assert: writer contentEscapes equals: writer contentNonEntityEscapes;
		assert: writer contentStringEscapes equals: writer contentStringNonEntityEscapes.

	writer isEscaping: false.
	self
		deny: writer escapesContentEntityReferences;
		assert: (writer escapesContentEntityReferences: true) == writer;
		assert: writer escapesContentEntityReferences;
		assert: writer isEscaping;
		assert: writer contentEscapes equals: writer contentDefaultEscapes;
		assert: writer contentStringEscapes equals: writer contentStringDefaultEscapes