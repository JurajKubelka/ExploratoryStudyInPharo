api
runAppleScript: aString 
	[ #OSSUnixSubprocess asClass new
			command: '/usr/bin/osascript';
			arguments: (Array with: '-e' with: aString); 
			run.
	] on: ProcessAlreadyTerminating do: [ :exeption | "do nothing" ]