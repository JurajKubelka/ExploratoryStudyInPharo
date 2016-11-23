as yet unclassified
typeId
	^ question ifNotNil: [ :aQuestion | aQuestion toolUsage typeId asString ] ifNil: [ '' ]