tests - basic text
testBasicText12
	source := 'c"keyword"'.
	self fail: source rule: #basicText.