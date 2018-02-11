importing
importSessionsFrom: rootDirectory
	"It imports DFlow sessions from a specific root directory.
	Each session is treated in particular."

	| sessions |
	sessions := DFSessionsManager new.
	rootDirectory allFiles do: [ :eachFile | | session |
		eachFile extension = 'fuel' ifTrue: [ 
			session := DFScripts importSessionFromPath: eachFile.
			sessions addSession: session ] ].
	sessions computeAttributes.
	^ sessions