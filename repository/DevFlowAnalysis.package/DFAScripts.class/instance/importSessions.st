importing
importSessions
	"self uniqueInstance importSessions"

	| rootDir |
	rootDir := FileLocator desktop / 'ExloratoryStudy2014'.
	rootDir exists ifFalse: [ rootDir := FileLocator documents / 'Research' / 'recordings' / 'ExloratoryStudy2014' ].
	rootDir exists ifFalse: [ ^ self inform: 'Cannot find the directory with recordings.' ].

	^ self importSessionsFrom: rootDir.