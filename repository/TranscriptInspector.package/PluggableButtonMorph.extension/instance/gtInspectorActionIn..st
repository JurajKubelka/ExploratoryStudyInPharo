*TranscriptInspector-AnsweringQuestionsImprovements
gtInspectorActionIn: composite
	<gtInspectorPresentationOrder: 10>
	^ composite actionList 
			title: 'Action';
			when: [ :entity | self gtExecutionPathAfterClick notNil ];
			act: [ :entity | self gtBrowseExecutionPathAfterClick ] 
				entitled: 'Browse ', self gtExecutionPathAfterClick printString;
		yourself