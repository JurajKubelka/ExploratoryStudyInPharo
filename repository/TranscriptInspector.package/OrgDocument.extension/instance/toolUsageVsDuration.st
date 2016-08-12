*TranscriptInspector-graphs
toolUsageVsDuration
	^ OrgGTInspectorIntegration uniqueInstance 
		paintToolUsageVsDurationOn: RTView new node: (self sessionHeadings as: OrgCollection)