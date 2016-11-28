*TranscriptInspector-AnsweringQuestionsImprovements
gtExecutionPathAfterClick
	^ self model ifNotNil: [ :aModel | aModel class 
		classAndMethodFor: self actionSelector
		do: [ :c :m | m ] 
		ifAbsent: [ nil ] ]