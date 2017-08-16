*DevFlowAnalysis
gtInspectorSummaryIn: composite
	<gtInspectorPresentationOrder: 5>  
	^ composite text
			title: 'Summary';
			display: [ :aDFSession | self printSummary ];
			yourself