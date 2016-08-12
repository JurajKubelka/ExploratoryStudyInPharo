*TranscriptInspector
directGeneralQuestions
	^ ((self lines select: [ :e | e isList not ]) 
			flatCollect: #directGeneralQuestions)
				ifEmpty: [ (self lines select: [ :e | e isList ])
					flatCollect: #directGeneralQuestions ]