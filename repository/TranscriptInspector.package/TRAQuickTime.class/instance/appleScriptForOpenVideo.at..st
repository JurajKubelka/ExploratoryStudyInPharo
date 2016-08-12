accessing - computed
appleScriptForOpenVideo: aFileReference at: aDateAndTime 
	^ String streamContents: [ :aStream |
		aStream 
			nextPutAll: 'set unixFile to "';
			nextPutAll: aFileReference fullName;
			nextPut: $"; 
			nextPutAll: '
set macFile to POSIX file unixFile
set fileRef to (macFile as alias)

tell application "QuickTime Player"
	activate
	set theMovie to (open fileRef)
	tell theMovie
		set current time to ';
			print: aDateAndTime asTime asSeconds;
			nextPutAll: '
	end tell
end tell' ]
