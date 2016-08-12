enumerating
maxQuestion: aSymbolOrBlock ifEmpty: anObject
	"Evaluates aSymbolOrBlock for every question. 
	In case of not existing questions in a category, return anObject."
	^ self subgroups max: [ :each | 
			each maxQuestion: aSymbolOrBlock ifEmpty: anObject ]