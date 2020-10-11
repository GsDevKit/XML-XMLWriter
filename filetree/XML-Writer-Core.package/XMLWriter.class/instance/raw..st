writing - unsafe
raw: aString
	"writes raw string content without doing any escaping of special
	characters, unlike #string:"

	aString ifNotEmpty: [
			self
				newStringMarkup;
				nextPutAll: aString]