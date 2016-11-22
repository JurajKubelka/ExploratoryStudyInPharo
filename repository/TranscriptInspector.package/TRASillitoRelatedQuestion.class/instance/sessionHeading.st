accessing
sessionHeading
	^ self questions 
		ifEmpty: [ OrgNilHeadingItem new ]
		ifNotEmpty: [ :aCollection | aCollection anyOne sessionHeading ]