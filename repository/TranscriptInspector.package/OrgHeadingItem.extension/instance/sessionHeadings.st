*TranscriptInspector
sessionHeadings
	^ self isSessionHeading 
		ifTrue: [ Array with: self ]
		ifFalse: [ self selectHeadings: [ :eachOrgHeadingItem | 
			eachOrgHeadingItem isSessionHeading ] ]