enumerating
sumQuestion: aSymbolOrBlock ifEmpty: anObject
	"Evaluates aSymbolOrBlock for every question. 
	In case of not existing questions in a category, return anObject."
	self questions ifEmpty: [ ^ anObject value ].
	^ self questions sum: aSymbolOrBlock