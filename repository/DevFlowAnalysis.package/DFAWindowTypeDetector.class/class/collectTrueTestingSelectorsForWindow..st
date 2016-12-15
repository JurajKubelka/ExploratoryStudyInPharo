enumerating
collectTrueTestingSelectorsForWindow: aDFProfiledWindow 
	^ aDFProfiledWindow class selectors 
			select: [ :e | (e beginsWith: #is) 
									and: [ (e includes: $:) not and: [ aDFProfiledWindow perform: e ] ] ]