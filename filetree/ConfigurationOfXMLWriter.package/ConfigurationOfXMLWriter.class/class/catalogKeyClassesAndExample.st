catalog
catalogKeyClassesAndExample

^ 'The main entry point is the class ==XMLWriter==.

Here are examples of the API 
[[[ 
	| writer |
	writer := XMLWriter new.
	writer tag
		name: ''emptyTag'';
		attributeAt: ''a'' put: ''one'';
		write.
]]]
	
[[[
	| writer |
	writer := XMLWriter new.
	writer
		enablePrettyPrinting;
		xml;
		comment: ''an example''.
	writer tag
		name: ''example:user'';
		xmlnsAt: ''example'' put: ''urn://example'';
		with: [
			writer
				tag: ''username'' with: ''jsmith'';
				tag: ''real-name'' with: ''John Smith'';
				tag: ''age'' with: ''25'';
				tag: ''id'' with: ''101''] 
]]]
'