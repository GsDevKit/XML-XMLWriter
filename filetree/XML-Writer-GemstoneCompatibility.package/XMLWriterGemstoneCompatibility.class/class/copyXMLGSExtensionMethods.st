private
copyXMLGSExtensionMethods
	"
	self copyXMLGSExtensionMethods
	"
	(String selectorsInProtocol: #'*XML-Writer-Core') do: [:each |
		CharacterCollection
			compile: (String sourceCodeAt: each)
			classified: #'*XML-Writer-GemstoneCompatibility'].