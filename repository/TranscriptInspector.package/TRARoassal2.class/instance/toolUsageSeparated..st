tool usage
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
	RTLegendBuilder new
		view: composer view;
		addColoredText: 'red arrow = missed opportunity' color: Color red;
		addColoredText: 'green arrow = false assumption' color: Color green;
		build.
	
	^ composer view