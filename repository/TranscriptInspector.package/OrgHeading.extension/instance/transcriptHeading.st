*TranscriptInspector
transcriptHeading
	^ (self headingItems collect: #transcriptHeading thenSelect: #isHeadingItem)
			ifNotEmpty: #any
			ifEmpty: [ OrgNilHeadingItem new ]