accessing
question: anObject
	self assert: [ anObject isKindOf: TRAGeneralQuestion ].
	question := anObject