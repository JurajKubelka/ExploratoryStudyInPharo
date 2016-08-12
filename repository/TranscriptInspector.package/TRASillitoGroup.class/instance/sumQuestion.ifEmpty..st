enumerating
sumQuestion: aSymbolOrBlock ifEmpty: anObject
	"Evaluates aSymbolOrBlock for every question. 
	In case of not existing questions in a category, return anObject."
	^ self subgroups sum: [ :each | 
			each sumQuestion: aSymbolOrBlock ifEmpty: anObject ]