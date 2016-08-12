*TranscriptInspector
gtInspectorToolUsageOn: composite
	<gtInspectorPresentationOrder: -3>
	| sessionHeadings |
	sessionHeadings := self sessionHeadings as: OrgCollection.
	sessionHeadings parent: self.
	sessionHeadings sort: [ :a :b | a staticVsDynamicToolUsageRatio < b staticVsDynamicToolUsageRatio ].
	^ OrgGTInspectorIntegration uniqueInstance 
		toolUsageViewIn: composite node: sessionHeadings withQuestions: false