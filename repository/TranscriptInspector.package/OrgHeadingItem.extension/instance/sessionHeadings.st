*TranscriptInspector
sessionHeadings
	^ self selectHeadings: [ :eachOrgHeadingItem | 
			eachOrgHeadingItem isSessionHeading ]