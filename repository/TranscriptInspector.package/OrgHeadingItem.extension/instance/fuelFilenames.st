*TranscriptInspector
fuelFilenames
	"Return one or two FUEL file names."
	^ { 
		self propertyValueAt: #'FUEL'.
		self propertyValueAt: #'FUEL-2' } reject: #isEmptyOrNil