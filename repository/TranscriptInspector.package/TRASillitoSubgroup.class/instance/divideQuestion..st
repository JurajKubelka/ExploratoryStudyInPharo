adding
divideQuestion: aTRAGeneralQuestion 
	self groupType shortName = aTRAGeneralQuestion groupName ifFalse: [ ^ self ].
	self addQuestion: aTRAGeneralQuestion