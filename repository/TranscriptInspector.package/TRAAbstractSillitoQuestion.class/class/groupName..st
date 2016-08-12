public
groupName: anIntegerOrSymbol 
	| methodName |
	methodName := ('q', anIntegerOrSymbol asString) asSymbol.
	^ (self respondsTo: methodName)
			ifTrue: [ ((self class categoryForSelector: methodName) allRegexMatches: '\([A-Za-z0-9]+\)') 
							ifNotEmpty: [ :aResult | | id |
								id := aResult anyOne.
								id copyFrom: 2 to: aResult anyOne size - 1 ]
							ifEmpty: 'Unknown' ]
			ifFalse: [ 'Unknown' ]