*TranscriptInspector
parentGeneralQuestionsFor: aTRAGeneralQuestion 
	| theQuestions |
	theQuestions := self directGeneralQuestions.
	(theQuestions includes: aTRAGeneralQuestion) ifFalse: [ ^ theQuestions ].
	^ self parent parentGeneralQuestionsFor: aTRAGeneralQuestion