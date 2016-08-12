accessing - computed
ratio
	| static dynamic |
	static := 0 seconds.
	dynamic := 0 seconds.
	self intervals ifEmpty: [ ^ Float nan ].
	self intervals do: [ :eachInterval |
		((eachInterval end > self from) and: [ eachInterval start < self to ]) ifTrue: [ | duration |
			duration := (eachInterval end min: self to) - (eachInterval start max: self from).
			eachInterval isStaticTool ifTrue: [ static := static + duration ].
			eachInterval isDynamicTool ifTrue: [ dynamic := dynamic + duration ] ] ].
	(static = 0 seconds and: [ dynamic = 0 seconds ]) ifTrue: [ ^ Float nan ].
	^ dynamic / (static + dynamic)