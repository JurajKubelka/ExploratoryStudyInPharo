*TranscriptInspector
jumpToVideo: aDateAndTime 
	TRAQuickTime new
		openVideo: self videoFileReference 
		at: aDateAndTime