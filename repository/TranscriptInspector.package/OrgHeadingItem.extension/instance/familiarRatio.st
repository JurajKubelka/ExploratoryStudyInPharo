*TranscriptInspector
familiarRatio
	^ (self propertyValueAt: #Familiar) 
		ifEmpty: 0
		ifNotEmpty: #asNumber