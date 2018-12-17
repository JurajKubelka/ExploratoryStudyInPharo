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
		column: 'Tool' 
				evaluated: [ :each | | aTRAItem |
					aTRAItem := each traItemOrNil.
					aTRAItem 
						ifNil: [ Float nan ] 
						ifNotNil: [ | ratio |
							ratio := each traItemOrNil staticVsLiveToolUsage asFloat.
							(ratio isInfinite or: [ ratio isNaN ]) ifFalse: [ ratio := ratio round: 2 ].
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
		column: 'Text' evaluated: [ :each |
			| aText | 
			aText := each text.
			aText first: (60 min: aText size) ];
		yourself
		