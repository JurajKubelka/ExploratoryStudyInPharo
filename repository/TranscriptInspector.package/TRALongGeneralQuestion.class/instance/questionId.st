accessing
questionId
	^ (self contents allRegexMatches: '\([a-z0-9]+\)') 
		ifNotEmpty: [ :aResult | | id |
			id := aResult anyOne.
			id copyFrom: 2 to: aResult anyOne size - 1 ]
		ifEmpty: [ '?' ]