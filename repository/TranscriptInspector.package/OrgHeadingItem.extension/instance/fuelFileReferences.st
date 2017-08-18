*TranscriptInspector
fuelFileReferences
	"Return one or two FUEL file reference objects."
	^ self sessionHeading fuelFullFilenames collect: #asFileReference