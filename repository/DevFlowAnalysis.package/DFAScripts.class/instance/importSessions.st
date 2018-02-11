importing
importSessions
	"self uniqueInstance importSessions"

	| rootDir |
	rootDir := FileLocator workingDirectory / 'dflow'.
	rootDir exists ifFalse: [ ^ self inform: 'Cannot find the directory with recordings.' ].
	^ self importSessionsFrom: rootDir.