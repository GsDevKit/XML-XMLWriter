tests
testIsCanonical
	| writer |

	(writer := XMLWriter new)
		enablePrettyPrinting;
		lineBreak: Character cr;
		isEscaping: false;
		escapesContentEntityReferences: false;
		omitsRedundantXMLNSDeclarations: false.
	self
		assert: (writer isCanonical: false) == writer;
		assert: (writer formatter isKindOf: XMLPrettyPrintingWriterFormatter);
		assert: writer lineBreak equals: String cr;
		deny: writer isEscaping;
		deny: writer escapesContentEntityReferences;
		deny: writer omitsRedundantXMLNSDeclarations.

	self
		assert: (writer isCanonical: true) == writer;
		assert: (writer formatter isKindOf: XMLCanonicalWriterFormatter);
		assert: writer lineBreak equals: writer canonicalLineBreak;
		assert: writer contentEscapes equals: writer contentCanonicalEscapes;
		assert: writer contentStringEscapes equals: writer contentStringCanonicalEscapes;
		assert: writer isEscaping;
		assert: writer escapesContentEntityReferences;
		assert: writer omitsRedundantXMLNSDeclarations.

	self
		assert: (writer isCanonical: false) == writer;
		assert: writer formatter isNil;
		assert: writer lineBreak equals: writer defaultLineBreak;
		assert: writer contentEscapes equals: writer contentDefaultEscapes;
		assert: writer contentStringEscapes equals: writer contentStringDefaultEscapes;
		assert: writer isEscaping;
		assert: writer escapesContentEntityReferences;
		assert: writer omitsRedundantXMLNSDeclarations