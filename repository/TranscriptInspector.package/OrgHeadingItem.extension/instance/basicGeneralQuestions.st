*TranscriptInspector
basicGeneralQuestions
	^ (self body flatCollect: #generalQuestions as: OrderedCollection) addAll:
		self subheading generalQuestions; yourself