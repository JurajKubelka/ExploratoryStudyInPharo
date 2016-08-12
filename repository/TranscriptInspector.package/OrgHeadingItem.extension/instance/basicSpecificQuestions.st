*TranscriptInspector
basicSpecificQuestions
	^ (self body flatCollect: #specificQuestions as: OrderedCollection) addAll:
		self subheading specificQuestions; yourself