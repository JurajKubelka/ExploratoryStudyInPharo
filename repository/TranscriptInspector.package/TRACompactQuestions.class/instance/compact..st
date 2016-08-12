public
compact: aBoolean 
	aBoolean 
		ifTrue: [ self compactPerQuestion ]
		ifFalse: [ self compactPerCategory ]