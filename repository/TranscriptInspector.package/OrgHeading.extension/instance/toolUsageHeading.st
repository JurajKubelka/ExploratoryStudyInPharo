*TranscriptInspector
toolUsageHeading
	^ (self headingItems collect: #toolUsageHeading thenSelect: #isHeadingItem)
			ifNotEmpty: #any
			ifEmpty: [ OrgNilHeadingItem new ]