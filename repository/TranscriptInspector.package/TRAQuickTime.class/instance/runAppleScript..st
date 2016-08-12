api
runAppleScript: aString 
	[ ExternalUnixOSProcess 
			forkAndExec: '/usr/bin/osascript' 
			arguments: (Array with: '-e' with: aString) 
			environment: (UnixProcess env).
	] on: ProcessAlreadyTerminating do: [ :exeption | "do nothing" ]