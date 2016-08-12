*TranscriptInspector
gtInspectorToolUsageViewOn: composite
	<gtInspectorPresentationOrder: -1>
	^ OrgGTInspectorIntegration uniqueInstance 
		toolUsageViewIn: composite node: self withQuestions: true