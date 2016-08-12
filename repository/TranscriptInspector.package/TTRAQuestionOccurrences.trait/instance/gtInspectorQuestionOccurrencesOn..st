gt-inspector-extension
gtInspectorQuestionOccurrencesOn: composite
	<gtInspectorPresentationOrder: 5>
	^ composite table
			title: 'Occurrences';
			display: [ self questions ];
			when: [ self hasQuestions ];
			column: 'Count'
				evaluated: [ :each | each count ]
				width: 40
				tags: { }
				sortedBy: [ :a :b | a count > b count ];
			column: 'Tool' 
				evaluated: [ :each | | ratio |
					ratio := each staticVsLiveToolUsage asFloat.
					(ratio isInfinite or: [ ratio isNaN ]) ifFalse: [ ratio := ratio round: 2 ].
					ratio ]
				width: 80
				tags: {}
				sortedBy: [ :a :b | a staticVsLiveToolUsage > b staticVsLiveToolUsage ];
			column: 'Short' 
				evaluated: [ :each | each shortName ]
				width: 40;
			column: 'Long name'
				evaluated: [ :each | each longName ]
				width: 300