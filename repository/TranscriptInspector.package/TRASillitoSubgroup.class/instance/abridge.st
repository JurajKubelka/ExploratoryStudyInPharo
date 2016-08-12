converting
abridge
	^ self class new
		codeType: self codeType;
		groupType: self groupType;
		questions: (self abridgeQuestions);
		yourself