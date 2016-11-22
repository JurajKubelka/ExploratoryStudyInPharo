gt-inspector-extension
gtInspectorQuestionsIn: composite
	<gtInspectorPresentationOrder: 1>
	^ composite table
			title: 'Questions';
			display: [ self questions sorted: [ :a :b | a duration < b duration ] ];
			when: [ self hasQuestions ];
			column: 'Session' 
				evaluated: [ :each | 
					each sessionHeading sessionId ]
				width: 50
				tags: {}
				sortedBy: [ :a :b | a sessionHeading sessionOrder < b sessionHeading sessionOrder ];
			column: 'Duration' 
				evaluated: [ :each | 
					each duration ]
				width: 80
				tags: {}
				sortedBy: [ :a :b | a duration < b duration ];
			column: 'Tool' 
				evaluated: [ :each | 
					TRAFloatPrinter uniqueInstance 
						normalize: each staticVsLiveToolUsage ]
				width: 80
				tags: {}
				sortedBy: [ :a :b | a staticVsLiveToolUsage > b staticVsLiveToolUsage ];
			column: 'Short' 
				evaluated: [ :each | each shortName ]
				width: 40;
			column: 'Long name'
				evaluated: [ :each | each longName ]
				width: 300;
			send: [ :questionInGroup |
				questionInGroup ifNotNil: [ :aQuestion | aQuestion question ] ]