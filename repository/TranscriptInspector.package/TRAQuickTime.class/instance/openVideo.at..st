api
openVideo: aFileReference at: aDateAndTime 
	aFileReference exists ifFalse: [ 
		^ self inform: 'File does not exists: ', aFileReference fullName ].
	self runAppleScript: (
			self 
				appleScriptForOpenVideo: aFileReference 
				at: aDateAndTime)