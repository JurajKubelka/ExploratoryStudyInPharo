*TranscriptInspector
badlyParsedTranscripts
	"Returns wrongly parsed transcripts."
	^ self selectHeadings: [ :eachOrgHeadingItem | 
			(eachOrgHeadingItem title = 'Transcript') and: [ 
				((eachOrgHeadingItem body size = 1) and: [ 
					eachOrgHeadingItem body first isList ]) not ] ]