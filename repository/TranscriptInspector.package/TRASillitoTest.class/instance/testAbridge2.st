tests
testAbridge2
	| sillito2 |
	self testAbridge.
	sillito2 := sillito abridge.
	self assertSillitoAbridge: sillito.
	self assertSillitoAbridge: sillito2.