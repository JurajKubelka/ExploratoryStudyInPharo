*TranscriptInspector
generalQuestionsOn: composite node: aNode
	^ composite table
			title: 'General Questions';
			display: [ aNode generalQuestions ];
			when: [ aNode generalQuestions notEmpty ];
			column: 'Sillito' 
				evaluated: [ :aGeneralQuestion | aGeneralQuestion sillitoQuestion shortName ]
				width: 40;
			column: 'Duration' 
				evaluated: [ :aGeneralQuestion | aGeneralQuestion printDuration ]
				width: 73
				tags: {}
				sortedBy: [ :a :b | a duration > b duration ];
			column: 'Tool' 
				evaluated: [ :aGeneralQuestion | | ratio |
					ratio := aGeneralQuestion staticVsLiveToolUsage asFloat.
					(ratio isInfinite or: [ ratio isNaN ]) ifFalse: [ ratio := ratio round: 2 ].
					ratio ]
				width: 80
				tags: {}
				sortedBy: [ :a :b | a staticVsLiveToolUsage > b staticVsLiveToolUsage ];
			column: 'Response' 
				evaluated: [ :aGeneralQuestion | aGeneralQuestion responseState shortName ]
				width: 80
				tags: {}
				sortedBy: [ :a :b | a responseState shortName < b responseState shortName ];
			column: 'Text'
				evaluated: [ :aGeneralQuestion | aGeneralQuestion text ]
				width: 300;
			column: 'Sillito Long'
				evaluated: [ :aGeneralQuestion | aGeneralQuestion sillitoQuestion longName ]
				width: 300;
			beMultiple;
			sendOneOrMultiple
			