accessing
parts: aCollection 
	parts ifNotNil: [ parts do: [ :each | each parent: nil ] ].
	parts := aCollection.
	aCollection do: [ :each | each parent: self ].