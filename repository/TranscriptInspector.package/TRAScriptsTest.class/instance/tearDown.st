running
tearDown
	window ifNotNil: [ :aWindow | aWindow delete ].
	super tearDown