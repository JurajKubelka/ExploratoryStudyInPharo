*TranscriptInspector
gtInspectorKeywordsTreeIn: composite
	<gtInspectorPresentationOrder: 1>
	| node |
	node := self sessionHeadings as: OrgCollection.
	^ OrgGTInspectorIntegration uniqueInstance 
		keywordsTreeIn: composite node: node