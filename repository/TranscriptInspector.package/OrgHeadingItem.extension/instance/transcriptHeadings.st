*TranscriptInspector
transcriptHeadings
	^ self sessionHeadings 
		ifEmpty: [ Array with: self transcriptHeading ]
		ifNotEmpty: [ :col | col collect: #transcriptHeading ]