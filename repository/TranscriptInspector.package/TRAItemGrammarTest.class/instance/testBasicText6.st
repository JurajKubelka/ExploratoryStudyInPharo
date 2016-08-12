tests - basic text
testBasicText6
	source := 'Q"Are you Lucky?"'.
	self fail: source rule: #basicText.
