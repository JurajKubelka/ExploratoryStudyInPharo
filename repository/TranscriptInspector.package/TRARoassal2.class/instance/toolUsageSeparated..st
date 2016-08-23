as yet unclassified
toolUsageSeparated: aNode
	| composer |
	composer := RTComposer new.
	aNode sessionHeadings
		withIndexDo: [ :eachNode :index | 
			OrgGTInspectorIntegration uniqueInstance
				paintToolUsageOn: composer view
				node: eachNode
				withQuestions: true
				legend: false.
			composer group: index.
			index > 1 ifTrue: [ composer move: index below: index - 1 ] ].
	^ composer view