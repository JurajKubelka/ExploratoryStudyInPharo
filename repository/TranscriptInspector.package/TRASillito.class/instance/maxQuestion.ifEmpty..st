enumerating
maxQuestion: aSymbolOrBlock ifEmpty: anObject
	"Evaluates aSymbolOrBlock for every question. 
	In case of not existing questions in a category, return anObject."
	^ self groups max: [ :each | each maxQuestion: aSymbolOrBlock ifEmpty: anObject ]