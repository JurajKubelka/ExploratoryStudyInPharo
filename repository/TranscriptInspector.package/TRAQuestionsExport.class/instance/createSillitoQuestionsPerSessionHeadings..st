private
createSillitoQuestionsPerSessionHeadings: aCollectionOfSessionHeadings 
	^ OrderedCollection new 
			addAll: (self 
				createSillitoQuestionsPerSessionHeadings: (aCollectionOfSessionHeadings select: [ :each | each isFamiliarSession not ])
				title: '#1'
				sillito: TRASillito unfamiliarSillito);
			addAll: (self 
				createSillitoQuestionsPerSessionHeadings: (aCollectionOfSessionHeadings select: #isFamiliarSession)
				title: '#2'
				sillito: TRASillito familiarSillito);
			yourself