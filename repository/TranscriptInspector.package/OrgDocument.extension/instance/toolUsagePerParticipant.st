*TranscriptInspector-graphs
toolUsagePerParticipant
	| sessionHeadings |
	sessionHeadings := self sessionHeadings as: OrgCollection.
	sessionHeadings parent: self.
	^ OrgGTInspectorIntegration uniqueInstance 
		paintToolUsagePerParticipantOn: RTView new node: sessionHeadings