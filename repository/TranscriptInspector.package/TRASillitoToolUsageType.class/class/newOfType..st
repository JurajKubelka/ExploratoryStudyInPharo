instance creation
newOfType: aString 
	self allSubclassesDo: [ :eachClass |
		(eachClass isOfType: aString) ifTrue: [ ^ eachClass new ] ].
	self error: 'cannot find the following type: ', aString printString.