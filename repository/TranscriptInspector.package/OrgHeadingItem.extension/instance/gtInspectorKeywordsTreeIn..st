*TranscriptInspector
gtInspectorKeywordsTreeIn: composite
	<gtInspectorPresentationOrder: 1>
	| node |
	self isSessionHeading 
		ifTrue: [ node := self transcriptHeading ]
		ifFalse: [ node := self ].
	^ OrgGTInspectorIntegration uniqueInstance 
		keywordsTreeIn: composite node: node