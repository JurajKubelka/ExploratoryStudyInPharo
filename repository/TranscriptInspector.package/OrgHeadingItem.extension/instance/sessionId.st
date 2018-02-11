*TranscriptInspector
sessionId
	^ (self sessionHeading propertyValueAt: #'SESSION-ID') ifEmpty: [ 'X0' ]