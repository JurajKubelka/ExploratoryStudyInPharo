as yet unclassified
sessionHeading
	^ self questions 
		ifEmpty: [ OrgNilHeadingItem new ]
		ifNotEmpty: [ :aCollection | aCollection anyOne sessionHeading ]