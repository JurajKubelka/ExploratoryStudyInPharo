*TranscriptInspector
fuelFullFilenames
	"Return one or two FUEL full filenames."
	^ self sessionHeading fuelFilenames
		collect: [ :eachFilename | self document existingRootDir, eachFilename ]