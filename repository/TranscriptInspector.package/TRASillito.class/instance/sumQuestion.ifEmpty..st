enumerating
sumQuestion: aSymbolOrBlock ifEmpty: anObject
	"Evaluates aSymbolOrBlock for every question. 
	In case of not existing questions in a category, return anObject."
	^ self groups sum: [ :each | 
			each sumQuestion: aSymbolOrBlock ifEmpty: anObject ]