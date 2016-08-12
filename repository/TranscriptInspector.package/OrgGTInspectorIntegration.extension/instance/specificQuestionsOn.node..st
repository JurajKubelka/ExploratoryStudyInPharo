*TranscriptInspector
specificQuestionsOn: composite node: aNode
	^ composite table
			title: 'Specific Questions';
			display: [ aNode specificQuestions ];
			when: [ aNode specificQuestions notEmpty ];
			column: 'Short'
				evaluated: [ :aSpecificQuestion | aSpecificQuestion shortName ]
				width: 40;
			column: 'Duration' 
				evaluated: [ :aSpecificQuestion | aSpecificQuestion printDuration ]
				width: 73
				tags: {}
				sortedBy: [ :a :b | a duration > b duration ] ;
			column: 'Tool' 
				evaluated: [ :aGeneralQuestion | | ratio |
					ratio := aGeneralQuestion staticVsLiveToolUsage asFloat.
					(ratio isInfinite or: [ ratio isNaN ]) ifFalse: [ ratio := ratio round: 2 ].
					ratio ]
				width: 80
				tags: {}
				sortedBy: [ :a :b | a staticVsLiveToolUsage > b staticVsLiveToolUsage ];
			column: 'Text'
				evaluated: [ :aSpecificQuestion | aSpecificQuestion text ]
				width: 300;
			beMultiple;
			sendOneOrMultiple