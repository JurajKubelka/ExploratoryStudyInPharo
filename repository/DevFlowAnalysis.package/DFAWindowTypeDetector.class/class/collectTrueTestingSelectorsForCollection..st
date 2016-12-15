enumerating
collectTrueTestingSelectorsForCollection: aCollection 
	^ aCollection collect: [ :eachItem |
		(eachItem class selectors select: [ :e | (e beginsWith: #is) and: [ (e includes: $:) not ] ]) 
			select: [ :e | (eachItem perform: e) ] ]