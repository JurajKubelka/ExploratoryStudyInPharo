api
runAppleScript: aString
	self class environment
		at: #OSSUnixSubprocess
		ifPresent: [ :aClass | 
			[ aClass new
				command: '/usr/bin/osascript';
				arguments: (Array with: '-e' with: aString);
				run ]
				on: ProcessAlreadyTerminating
				do: [ :exeption | "do nothing" ].
			^ self ].
	self class environment
		at: #OSXProcess
		ifPresent: [ :aClass | 
			| cmd |
			cmd := '/usr/bin/osascript -e ''' , aString , ''''.
			^ aClass resultOfCommand: cmd ].
	self error: 'Cannot run AppleScript.'