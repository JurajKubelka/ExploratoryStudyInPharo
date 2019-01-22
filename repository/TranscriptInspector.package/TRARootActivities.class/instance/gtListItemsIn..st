gt-inspector-extension
gtListItemsIn: composite
	<gtInspectorPresentationOrder: 1>
	^ composite fastTable
		title: 'Other Root Activities';
		display: [ self ];
		when: [ self isEmpty not and: [ self allSatisfy: [ :each | each class = OrgListItem ] ] ];
		column: 'Duration' 
			evaluated: [ :each | each traItemOrNil ifNotNil: #printDuration ]
			width: 73;
		column: 'Duration [seconds]' 
			evaluated: [ :each | each traItemOrNil 
				ifNotNil: [ :anItem | 
					anItem timespan 
						ifNotNil: [ anItem duration asSeconds ]
						ifNil: [ 0 ] ]
				ifNil: [ 0 ] ]
			width: 120;
		column: 'Tool Usage [%]' 
				evaluated: [ :each | | aTRAItem |
					aTRAItem := each traItemOrNil.
					aTRAItem 
						ifNil: [ Float nan ] 
						ifNotNil: [ | ratio |
							ratio := each traItemOrNil staticVsLiveToolUsage asFloat.
							(ratio isInfinite or: [ ratio isNaN ]) 
								ifFalse: [ ratio := ratio round: 2 ].
							ratio ] ]
				width: 80
				tags: {}
				sortedBy: [ :a :b | a traItemOrNil staticVsLiveToolUsage > 
					b traItemOrNil staticVsLiveToolUsage ];
		column: 'Session' 
				evaluated: [ :each | each sessionHeading sessionId ] 
				width: 50
				tags: {}
				sortedBy: [ :a :b | a sessionHeading sessionOrder < b sessionHeading sessionOrder ];
		column: 'Codebase' 
				evaluated: [ :each | each sessionHeading isFamiliarSession ifTrue: [ 'Familiar' ] ifFalse: [ 'Unfamiliar' ] ] 
				width: 100
				tags: {}
				sortedBy: [ :a :b | a sessionHeading isFamiliarSession ];
		"column: 'Text' evaluated: [ :each |
			| aText | 
			aText := each text.
			aText first: (60 min: aText size).
			aText replaceAll: Character cr with: Character space.
			aText replaceAll: Character lf with: Character space.
			aText replaceAll: Character tab with: Character space. ];"
		installExportToCSV;
		yourself
		