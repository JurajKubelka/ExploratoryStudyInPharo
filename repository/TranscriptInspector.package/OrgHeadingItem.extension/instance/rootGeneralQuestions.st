*TranscriptInspector
rootGeneralQuestions
	^ (self body flatCollect: #directGeneralQuestions as: OrderedCollection) addAll:
		self subheading rootGeneralQuestions; yourself