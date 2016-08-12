*TranscriptInspector
sessionHeadings
	"Returns Tool Usage headings."
	^ self selectHeadings: [ :eachOrgHeadingItem | 
			eachOrgHeadingItem isSessionHeading ]