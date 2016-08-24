instance creation
id: aString
	| methodName |
	methodName := ('q', aString asString) asSymbol.
	^ (self respondsTo: methodName)
			ifTrue: [ self perform: methodName ]
			ifFalse: [ TRAUnknownSillitoQuestion new ]