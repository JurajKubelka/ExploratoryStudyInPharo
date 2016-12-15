*DevFlowAnalysis
gtInspectorSessionsIn: composite
	<gtInspectorPresentationOrder: -15>  
	^ composite table
			title: 'Sessions';
			display: [ :aDFSessionManager | aDFSessionManager sessions ];
			column: 'Id'
				evaluated: [ :aDFSession | aDFSession id ]
				width: 100
				tags: [ :aSession | 
					aSession isFamiliar ifTrue: [ 'familiar' ] ifFalse: [ 'unfamiliar' ] ];
			column: 'Duration'
				evaluated: [ :aDFSession | aDFSession duration roundedToSeconds ]
				width: 63
				tags: #()
				sortedBy: [ :a :b | a duration < b duration ];
			column: 'Ranking'
				evaluated: [ :aDFSession | aDFSession familiarRanking ]
				width: 58
				tags: #()
				sortedBy: [ :a :b | a familiarRanking < b familiarRanking ];
			column: 'Title'
				evaluated: [ :aDFSession | aDFSession title ];
			beMultiple;
			withSmalltalkSearch;
			showOnly: 50;
			sendOneOrMultipleAs: DFASessions;
			helpMessage: 'it executes: self select: [ :each | INPUT ]'