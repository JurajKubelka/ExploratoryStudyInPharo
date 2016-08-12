*TranscriptInspector
keywords
	^ (self body flatCollect: #keywords) union:
			self subheading keywords