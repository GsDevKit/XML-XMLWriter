asserting
should: aBlock enumerate: aCollection
	| enumerated |

	enumerated := OrderedCollection new.
	aBlock value: [:each | enumerated add: each].
	self assert: enumerated equals: aCollection asOrderedCollection