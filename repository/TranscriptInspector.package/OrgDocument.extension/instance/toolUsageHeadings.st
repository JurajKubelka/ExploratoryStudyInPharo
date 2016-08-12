*TranscriptInspector
toolUsageHeadings
	"Returns Tool Usage headings."
	^ self selectHeadings: [ :eachOrgHeadingItem | 
			eachOrgHeadingItem isToolUsageHeading ]