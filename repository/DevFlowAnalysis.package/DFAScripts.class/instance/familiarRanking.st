accessing
familiarRanking
	^ familiarRanking ifNil: [ familiarRanking := self newFamiliarRanking ]