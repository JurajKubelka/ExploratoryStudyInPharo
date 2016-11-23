as yet unclassified
typeId
	^ question ifNotNil: [ :aQuestion | aQuestion toolUsage printedSymbol asString ] ifNil: [ '' ]