*TranscriptInspector
existingRootDir
	#(RootDir1 RootDir2 RootDir3) do: [ :eachDir | | dirName |
			dirName := self propertyValueAt: eachDir.
			dirName asFileReference exists ifTrue: [ ^ dirName ] ].
	^ FileLocator workingDirectory fullName